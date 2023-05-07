_base_ = ['../_base_/models/retinanet_r50_fpn.py',
          '../_base_/datasets/wailaiwuzhong_detection.py',
          '../_base_/schedules/schedule_3x.py',
          '../_base_/default_runtime.py'
    ]

# optimizer
model = dict(
    backbone=dict(
        depth=101,
        init_cfg=dict(type='Pretrained',
                      checkpoint='torchvision://resnet101')),
    bbox_head=dict(
        num_classes=6))
optim_wrapper = dict(
    optimizer=dict(type='SGD', lr=0.01, momentum=0.9, weight_decay=0.0001))

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/retinanet/retinanet_r101_fpn_mstrain_3x_coco/retinanet_r101_fpn_mstrain_3x_coco_20210720_214650-7ee888e0.pth'
