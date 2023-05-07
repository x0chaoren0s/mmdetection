_base_ = ['../_base_/models/faster-rcnn_r50_fpn.py',
          '../_base_/datasets/wailaiwuzhong_detection.py',
          '../_base_/schedules/schedule_3x.py',
          '../_base_/default_runtime.py'
    ]

model = dict(
    backbone=dict(
        type='ResNeXt',
        depth=101,
        groups=64,
        base_width=4,
        num_stages=4,
        out_indices=(0, 1, 2, 3),
        frozen_stages=1,
        norm_cfg=dict(type='BN', requires_grad=True),
        style='pytorch',
        init_cfg=dict(
            type='Pretrained', checkpoint='open-mmlab://resnext101_64x4d')),
    roi_head=dict(
        bbox_head=dict(
            num_classes=6,)))

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/faster_rcnn/faster_rcnn_x101_64x4d_fpn_mstrain_3x_coco/faster_rcnn_x101_64x4d_fpn_mstrain_3x_coco_20210524_124528-26c63de6.pth'
