_base_ = 'deformable-detr-refine_r50_16xb2-50e_500e-wailaiwuzhong.py'
model = dict(as_two_stage=True)

# 使用预训练的模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v3.0/deformable_detr/deformable-detr-refine-twostage_r50_16xb2-50e_coco/deformable-detr-refine-twostage_r50_16xb2-50e_coco_20221021_184714-acc8a5ff.pth'
