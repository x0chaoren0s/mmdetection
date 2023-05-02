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
#     1 \
#     --cfg-options train_dataloader.batch_size=20

    
# try:

CUDA_VISIBLE_DEVICES=2 PORT=29501 ./tools/dist_train.sh \
    configs/faster_rcnn/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong.py \
    1 