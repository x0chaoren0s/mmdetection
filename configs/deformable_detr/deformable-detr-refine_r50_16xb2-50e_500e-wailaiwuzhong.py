_base_ = 'deformable-detr_r50_16xb2-50e_500e-wailaiwuzhong.py'
model = dict(with_box_refine=True)

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v3.0/deformable_detr/deformable-detr-refine_r50_16xb2-50e_coco/deformable-detr-refine_r50_16xb2-50e_coco_20221022_225303-844e0f93.pth'
