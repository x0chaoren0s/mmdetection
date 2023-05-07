
# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/1/20230314123525_20230314124010_000285.mp4 \
#     configs/detr/detr_r50_8xb2-150e_500e-wailaiwuzhong.py \
#     work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/best_coco_bbox_mAP_epoch_315.pth \
#     --out=work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/1/20230314123525_20230314124010_000285.mp4
#     # --device=cuda:0 \
#     # --score-thr=0.3 \
# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/1/20230314123525_20230314124010_000285.mp4 \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/best_coco_bbox_mAP_epoch_130.pth \
#     --out=work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/1/20230314123525_20230314124010_000285.mp4 \
#     --device=cuda:1 
#     # --score-thr=0.3 \

# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/2/20230314164135_20230314164635_000300.mp4 \
#     configs/detr/detr_r50_8xb2-150e_500e-wailaiwuzhong.py \
#     work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/best_coco_bbox_mAP_epoch_315.pth \
#     --out=work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/2/20230314164135_20230314164635_000300.mp4 \
#     --device=cuda:1 
#     # --score-thr=0.3 \
# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/2/20230314164135_20230314164635_000300.mp4 \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/best_coco_bbox_mAP_epoch_130.pth \
#     --out=work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/2/20230314164135_20230314164635_000300.mp4 \
#     --device=cuda:2 
#     # --score-thr=0.3 \
# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/2/20230314164135_20230314164635_000300.mp4 \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/best_coco_bbox_mAP_epoch_130.pth \
#     --out=work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/2/thr0.6_20230314164135_20230314164635_000300.mp4 \
#     --device=cuda:2 \
#     --score-thr=0.6

python demo/video_demo.py \
    data/wailaiwuzhong/videos/20230506.mp4 \
    configs/detr/detr_r50_8xb2-150e_500e-wailaiwuzhong.py \
    work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/best_coco_bbox_mAP_epoch_315.pth \
    --out=work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/20230506.mp4 \
    --device=cuda:1 
    # --score-thr=0.3 \
# python demo/video_demo.py \
#     data/wailaiwuzhong/videos/20230506.mp4 \
#     configs/yolox/yolox_l_8xb8-500e_wailaiwuzhong.py \
#     work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/best_coco_bbox_mAP_epoch_130.pth \
#     --out=work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/thr0.6_20230506.mp4 \
#     --device=cuda:3 \
#     --score-thr=0.6
