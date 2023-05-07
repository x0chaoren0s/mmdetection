_base_ = ['../_base_/models/yolov3_d53_8xb8.py',
          '../_base_/datasets/wailaiwuzhong_detection_yolo.py',
          '../_base_/schedules/schedule_273e_yolo.py',
          '../_base_/default_runtime.py'
    ]

# model settings
model = dict(
    bbox_head=dict(
        num_classes=6))

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/yolo/yolov3_d53_mstrain-608_273e_coco/yolov3_d53_mstrain-608_273e_coco_20210518_115020-a2c3acb8.pth'
