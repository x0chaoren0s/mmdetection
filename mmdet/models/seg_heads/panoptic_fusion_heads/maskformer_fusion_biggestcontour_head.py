# Copyright (c) OpenMMLab. All rights reserved.
import torch
import torch.nn.functional as F

from mmdet.core.evaluation.panoptic_utils import INSTANCE_OFFSET
from mmdet.core.mask import mask2bbox
from mmdet.models.builder import HEADS
from .base_panoptic_fusion_head import BasePanopticFusionHead
from .maskformer_fusion_head import MaskFormerFusionHead

import cv2
import numpy as np


@HEADS.register_module()
class MaskFormerFusionBiggestContourHead(MaskFormerFusionHead):
    '''
    对最后输出的mask和bbox增加一步后处理：使用opencv的功能将检测结果进一步缩小为原来的最大填充轮廓。 \n
    暂时仅实现了instance_postprocess
    '''
    def instance_postprocess(self, mask_cls, mask_pred):
        """Instance segmengation postprocess.

        Args:
            mask_cls (Tensor): Classfication outputs of shape
                (num_queries, cls_out_channels) for a image.
                Note `cls_out_channels` should includes
                background.
                # shape: torch.Size([100, 2])
            mask_pred (Tensor): Mask outputs of shape
                (num_queries, h, w) for a image.
                # shape: torch.Size([100, 1080, 1920])

        Returns:
            tuple[Tensor]: Instance segmentation results.

            - labels_per_image (Tensor): Predicted labels,\
                shape (n, ).
            - bboxes (Tensor): Bboxes and scores with shape (n, 5) of \
                positive region in binary mask, the last column is scores.
            - mask_pred_binary (Tensor): Instance masks of \
                shape (n, h, w).
        """
        max_per_image = self.test_cfg.get('max_per_image', 100) # 100
        num_queries = mask_cls.shape[0]                         # 100
        # shape (num_queries, num_class)
        scores = F.softmax(mask_cls, dim=-1)[:, :-1]            # shape: torch.Size([100, 1])
        # shape (num_queries * num_class, )
        labels = torch.arange(self.num_classes, device=mask_cls.device).\
            unsqueeze(0).repeat(num_queries, 1).flatten(0, 1)   # shape: torch.Size([100])  self.num_classes: 1
        scores_per_image, top_indices = scores.flatten(0, 1).topk(
            max_per_image, sorted=False)                        # scores_per_image.shape: torch.Size([100])
                                                                # top_indices.shape: torch.Size([100])
        labels_per_image = labels[top_indices]                  # shape: torch.Size([100])

        query_indices = top_indices // self.num_classes         # shape: torch.Size([100])  self.num_classes: 1
        mask_pred = mask_pred[query_indices]                    # shape: torch.Size([100, 1080, 1920])

        # extract things
        is_thing = labels_per_image < self.num_things_classes   # shape: torch.Size([100])  self.num_things_classes: 1
        scores_per_image = scores_per_image[is_thing]           # shape: torch.Size([100])
        labels_per_image = labels_per_image[is_thing]           # shape: torch.Size([100])
        mask_pred = mask_pred[is_thing]                         # shape: torch.Size([100, 1080, 1920])

        mask_pred_binary = (mask_pred > 0).float()              # shape: torch.Size([100, 1080, 1920])
        mask_scores_per_image = (mask_pred.sigmoid() *
                                 mask_pred_binary).flatten(1).sum(1) / (
                                     mask_pred_binary.flatten(1).sum(1) + 1e-6) # shape: torch.Size([100])
        det_scores = scores_per_image * mask_scores_per_image   # shape: torch.Size([100])
        #--------- 修改开始 -----------
        # mask_pred_binary = mask_pred_binary.bool()              # shape: torch.Size([100, 1080, 1920])
        mask_pred_binary_numpy = mask_pred_binary.to(torch.uint8).cpu().numpy()
        for channel in range(mask_pred_binary_numpy.shape[0]):
            contours, hierarchy = cv2.findContours(mask_pred_binary_numpy[channel], cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
            contours = sorted(contours, key=lambda c: cv2.contourArea(c), reverse=True)
            mask = np.zeros_like(mask_pred_binary_numpy[channel])
            mask_pred_binary_numpy[channel] = cv2.drawContours(mask,contours,0,255,cv2.FILLED)
        mask_pred_binary = torch.Tensor(mask_pred_binary_numpy).to(mask_pred_binary.device).bool()
        #--------- 修改结束 -----------
        bboxes = mask2bbox(mask_pred_binary)                    # shape: torch.Size([100, 4])
        bboxes = torch.cat([bboxes, det_scores[:, None]], dim=-1)   # shape: torch.Size([100, 5])
        return labels_per_image, bboxes, mask_pred_binary       # shape: torch.Size([100]), torch.Size([100, 5]), torch.Size([100, 1080, 1920])
# HEADS.register_module(name='MaskFormerFusionBiggestContourHead',module=MaskFormerFusionBiggestContourHead)