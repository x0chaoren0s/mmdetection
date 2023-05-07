_base_ = './yolov3_d53_8xb8-ms-608-273e_wailaiwuzhong.py'
# fp16 settings
optim_wrapper = dict(type='AmpOptimWrapper', loss_scale='dynamic')

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/yolo/yolov3_d53_fp16_mstrain-608_273e_coco/yolov3_d53_fp16_mstrain-608_273e_coco_20210517_213542-4bc34944.pth'
