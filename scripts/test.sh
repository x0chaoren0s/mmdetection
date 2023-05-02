# python tools/test.py \
#     --show-dir epoch_12 \
#     configs/my_configs/balloon/mask-rcnn_r50-caffe_fpn_ms-poly-1x_balloon.py \
#     work_dirs/mask-rcnn_r50-caffe_fpn_ms-poly-1x_balloon/epoch_12.pth

# python tools/test.py \
#     --show-dir 20230501_232301_epoch_32 \
#     work_dirs/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong.py \
#     work_dirs/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong/20230501_232301/best_coco_bbox_mAP_epoch_32.pth

# python tools/test.py \
#     configs/faster_rcnn/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong.py \
#     work_dirs/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong/20230502_113034/best_coco_bbox_mAP_epoch_18.pth \
#     --work-dir work_dirs/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong/20230502_113034/test \
#     --show-dir best_coco_bbox_mAP_epoch_18

python tools/test.py \
    configs/faster_rcnn/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong.py \
    work_dirs/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong/20230502_113034/best_coco_bbox_mAP_epoch_18.pth