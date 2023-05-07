videos=(
    # work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/1/20230314123525_20230314124010_000285.mp4
    # work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/1/20230314123525_20230314124010_000285.mp4
    
    work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/2/20230314164135_20230314164635_000300.mp4
    work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/2/20230314164135_20230314164635_000300.mp4
    work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/2/thr0.6_20230314164135_20230314164635_000300.mp4
    work_dirs/detr_r50_8xb2-150e_500e-wailaiwuzhong/20230505_193241/test_video/best_coco_bbox_mAP_epoch_315/20230506.mp4
    work_dirs/yolox_l_8xb8-500e_wailaiwuzhong/20230504_222537/test_video/best_coco_bbox_mAP_epoch_130/thr0.6_20230506.mp4
)
target_names=(
    # detr_1_20230314123525_20230314124010_000285.mp4
    # yoloxl_1_20230314123525_20230314124010_000285.mp4

    detr_2_20230314164135_20230314164635_000300.mp4
    yoloxl_2_20230314164135_20230314164635_000300.mp4
    yoloxl_2_thr0.6_20230314164135_20230314164635_000300.mp4
    detr_20230506.mp4
    yoloxl_thr0.6_20230506.mp4
)   
target_folder=wailaiwuzhong_demo_videos
# echo $target_folder/${target_names[0]}
# /home/xxy/miniconda3/envs/baiduyun/bin/bypy
for ((i=0;i<${#videos[*]};i++)) do
    echo ${videos[i]} $target_folder/${target_names[i]}
    /home/xxy/miniconda3/envs/baiduyun/bin/bypy upload ${videos[i]} $target_folder/${target_names[i]} 
done