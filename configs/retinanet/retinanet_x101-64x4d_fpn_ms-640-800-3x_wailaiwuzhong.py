_base_ = ['../_base_/models/retinanet_r50_fpn.py',
          '../_base_/datasets/wailaiwuzhong_detection.py',
          '../_base_/schedules/schedule_3x.py',
          '../_base_/default_runtime.py'
    ]
# optimizer
model = dict(
    backbone=dict(
        type='ResNeXt',
        depth=101,
        groups=64,
        base_width=4,
        init_cfg=dict(
            type='Pretrained', checkpoint='open-mmlab://resnext101_64x4d')),
    bbox_head=dict(
        num_classes=6))
optim_wrapper = dict(optimizer=dict(type='SGD', lr=0.01))

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/retinanet/retinanet_x101_64x4d_fpn_mstrain_3x_coco/retinanet_x101_64x4d_fpn_mstrain_3x_coco_20210719_051838-022c2187.pth'
