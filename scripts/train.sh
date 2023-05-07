# succeed:

# python tools/train.py configs/mask_rcnn/mask-rcnn_r50-caffe_fpn_ms-poly-1x_coco.py \
#     --resume \
#     --cfg-options train_dataloader.batch_size=16

# bash ./tools/dist_train.sh configs/mask_rcnn/mask-rcnn_r50-caffe_fpn_ms-poly-1x_coco.py \
#     4 \
#     --resume \
#     --cfg-options train_dataloader.batch_size=20

# hainan服务器，CUDA_VISIBLE_DEVICES可选0,1,2,3
# 多任务训练需要给不同的训练任务指定不同的端口（默认为 29500）来避免冲突
# CUDA_VISIBLE_DEVICES=1,2 PORT=29500 ./tools/dist_train.sh \
#     configs/mask_rcnn/mask-rcnn_r50-caffe_fpn_ms-poly-1x_coco.py \
#     2 \
#     --resume \
#     --cfg-options train_dataloader.batch_size=20

# python tools/train.py configs/my_configs/balloon/mask-rcnn_r50-caffe_fpn_ms-poly-1x_balloon.py

# python tools/train.py configs/my_configs/balloon/mask-rcnn_r101-caffe_fpn_ms-poly-3x_coco_balloon.py

# python tools/train.py  configs/faster_rcnn/faster-rcnn_r50_fpn_ms-3x_balloon.py
    # configs/faster_rcnn/faster-rcnn_r50_fpn_ms-3x_balloon.py \
    # 1 \
    # --resume 
    # # --cfg-options train_dataloader.batch_size=1

# CUDA_VISIBLE_DEVICES=1 PORT=29500 ./tools/dist_train.sh \
#     configs/faster_rcnn/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=2 PORT=29501 ./tools/dist_train.sh \
#     configs/faster_rcnn/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=3 PORT=29502 ./tools/dist_train.sh \
#     configs/faster_rcnn/faster-rcnn_x101-64x4d_fpn_ms-3x_wailaiwuzhong.py \
#     1 

# CUDA_VISIBLE_DEVICES=1 PORT=29500 ./tools/dist_train.sh \
#     configs/retinanet/retinanet_r50_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=2 PORT=29501 ./tools/dist_train.sh \
#     configs/retinanet/retinanet_r101_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=3 PORT=29502 ./tools/dist_train.sh \
#     configs/retinanet/retinanet_x101-64x4d_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     1 

# CUDA_VISIBLE_DEVICES=1 PORT=29500 ./tools/dist_train.sh \
#     configs/yolo/yolov3_d53_8xb8-ms-608-273e_coco.py \
#     1 

# CUDA_VISIBLE_DEVICES=2 PORT=29501 ./tools/dist_train.sh \
#     configs/yolo/yolov3_d53_8xb8-ms-608-273e_wailaiwuzhong.py \
#     1 \
#     --resume \
#     --cfg-options train_cfg.max_epochs=500
# CUDA_VISIBLE_DEVICES=3 PORT=29502 ./tools/dist_train.sh \
#     configs/yolo/yolov3_d53_8xb8-amp-ms-608-273e_wailaiwuzhong.py \
#     1 \
#     --resume \
#     --cfg-options train_cfg.max_epochs=500

# CUDA_VISIBLE_DEVICES=1 PORT=29500 ./tools/dist_train.sh \
#     configs/yolox/yolox_s_8xb8-300e_wailaiwuzhong.py \
#     1 \
#     --resume \
#     --cfg-options train_cfg.max_epochs=500
# CUDA_VISIBLE_DEVICES=1 PORT=29501 ./tools/dist_train.sh \
#     configs/yolox/yolox_s_8xb8-500e_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=2 PORT=29502 ./tools/dist_train.sh \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=3 PORT=29503 ./tools/dist_train.sh \
#     configs/yolox/yolox_x_8xb8-500e_wailaiwuzhong.py \
#     1 

    
    
# try:
# CUDA_VISIBLE_DEVICES=1 PORT=29501 ./tools/dist_train.sh \
#     configs/detr/detr_r50_8xb2-150e_500e-wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=2 PORT=29502 ./tools/dist_train.sh \
#     configs/deformable_detr/deformable-detr_r50_16xb2-50e_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=3 PORT=29503 ./tools/dist_train.sh \
#     configs/deformable_detr/deformable-detr-refine_r50_16xb2-50e_wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=2 PORT=29512 ./tools/dist_train.sh \
#     configs/deformable_detr/deformable-detr_r50_16xb2-50e_500e-wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=3 PORT=29503 ./tools/dist_train.sh \
#     configs/deformable_detr/deformable-detr-refine_r50_16xb2-50e_500e-wailaiwuzhong.py \
#     1 
# CUDA_VISIBLE_DEVICES=1 PORT=29501 ./tools/dist_train.sh \
#     configs/deformable_detr/deformable-detr-refine-twostage_r50_16xb2-50e_500e-wailaiwuzhong.py \
#     1 