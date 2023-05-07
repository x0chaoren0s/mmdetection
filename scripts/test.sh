# python tools/test.py \
#     --show-dir epoch_12 \
#     configs/my_configs/balloon/mask-rcnn_r50-caffe_fpn_ms-poly-1x_balloon.py \
#     work_dirs/mask-rcnn_r50-caffe_fpn_ms-poly-1x_balloon/epoch_12.pth

# python tools/test.py \
#     configs/faster_rcnn/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong.py \
#     work_dirs/faster-rcnn_r50_fpn_ms-3x_wailaiwuzhong/20230502_123905/best_coco_bbox_mAP_epoch_34.pth
# python tools/test.py \
#     configs/faster_rcnn/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong.py \
#     work_dirs/faster-rcnn_r101_fpn_ms-3x_wailaiwuzhong/20230502_113034/best_coco_bbox_mAP_epoch_18.pth
# python tools/test.py \
#     configs/faster_rcnn/faster-rcnn_x101-64x4d_fpn_ms-3x_wailaiwuzhong.py \
#     work_dirs/faster-rcnn_x101-64x4d_fpn_ms-3x_wailaiwuzhong/20230502_124616/best_coco_bbox_mAP_epoch_18.pth

# python tools/test.py \
#     configs/retinanet/retinanet_r50_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     work_dirs/retinanet_r50_fpn_ms-640-800-3x_wailaiwuzhong/20230502_142410/best_coco_bbox_mAP_epoch_32.pth
# python tools/test.py \
#     configs/retinanet/retinanet_r101_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     work_dirs/retinanet_r101_fpn_ms-640-800-3x_wailaiwuzhong/20230502_142703/best_coco_bbox_mAP_epoch_28.pth
# python tools/test.py \
#     configs/retinanet/retinanet_x101-64x4d_fpn_ms-640-800-3x_wailaiwuzhong.py \
#     work_dirs/retinanet_x101-64x4d_fpn_ms-640-800-3x_wailaiwuzhong/20230502_143016/best_coco_bbox_mAP_epoch_30.pth

# python tools/test.py \
#     configs/yolox/yolox_s_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_s_8xb8-500e_wailaiwuzhong/20230504_221947/best_coco_bbox_mAP_epoch_500.pth
# python tools/test.py \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/best_coco_bbox_mAP_epoch_130.pth
# python tools/test.py \
#     configs/yolox/yolox_x_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_x_8xb8-500e_wailaiwuzhong/20230504_222618/best_coco_bbox_mAP_epoch_140.pth

python tools/test.py \
    configs/detr/detr_r50_8xb2-150e_500e-wailaiwuzhong.py \
    work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/best_coco_bbox_mAP_epoch_315.pth
python tools/test.py \
    configs/deformable_detr/deformable-detr_r50_16xb2-50e_500e-wailaiwuzhong.py \
    work_dirs/deformable-detr_r50_16xb2-50e_500e-wailaiwuzhong/20230505_222821/best_coco_bbox_mAP_epoch_273.pth
python tools/test.py \
    configs/deformable_detr/deformable-detr-refine_r50_16xb2-50e_500e-wailaiwuzhong.py \
    work_dirs/deformable-detr-refine_r50_16xb2-50e_500e-wailaiwuzhong/20230505_222810/best_coco_bbox_mAP_epoch_87.pth
python tools/test.py \
    configs/deformable_detr/deformable-detr-refine-twostage_r50_16xb2-50e_500e-wailaiwuzhong.py \
    work_dirs/deformable-detr-refine-twostage_r50_16xb2-50e_500e-wailaiwuzhong/20230506_000145/best_coco_bbox_mAP_epoch_87.pth