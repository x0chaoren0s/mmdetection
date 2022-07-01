
# # 生成默认完整config
# python train_copied_from_tools.py \
#     configs/mask2former/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py

# 单卡训练
# python tools/train.py ${CONFIG_FILE}
# CONFIG_FILE是指模型的参数文件，例如: ./configs/faster_rcnn_r50_fpn_1x.py
# 不用 --gpu-id 因为即使填了1，还是从gpu 0拷数据，改用 CUDA_VISIBLE_DEVICES
# CUDA_VISIBLE_DEVICES=2 python train_copied_from_tools.py \
#     configs/my_configs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py
python test_copied_from_tools.py \
    configs/my_configs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py \
    work_dirs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco_CosineAnnealing/epoch_2000.pth \
    --show-dir work_dirs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco_CosineAnnealing/test_raw_epoch2000

# distributed 多卡训练
# ./tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} [optional arguments]
# CUDA_VISIBLE_DEVICES=1,2 ./tools/dist_train.sh \
#     configs/my_configs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py \
#     2
# CONFIG_FILE是指模型的参数文件，例如: ./configs/faster_rcnn_r50_fpn_1x.py
# GPU_NUM是指使用GPU个数
# optional arguments其中可以使用的有：“--validate”，这个表示在trian的过程中使用val数据集进行验证
# python test_copied_from_tools.py \
#     configs/my_configs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py \
#     work_dirs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco/iter_367500.pth \
#     --show-dir work_dirs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco/test_raw_it367500

