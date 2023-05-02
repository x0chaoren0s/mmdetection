_base_ = ['../_base_/models/faster-rcnn_r50_fpn.py',
          '../_base_/datasets/wailaiwuzhong_detection.py',
          '../_base_/schedules/schedule_3x.py',
          '../_base_/default_runtime.py'
    ]

model = dict(
    roi_head=dict(
        bbox_head=dict(
            num_classes=6,)))

# 使用预训练的 Mask R-CNN 模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/faster_rcnn/faster_rcnn_r50_fpn_mstrain_3x_coco/faster_rcnn_r50_fpn_mstrain_3x_coco_20210524_110822-e10bd31c.pth'
