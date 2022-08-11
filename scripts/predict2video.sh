# 视频推理
# https://github.com/open-mmlab/mmdetection/blob/master/docs/zh_cn/1_exist_data_model.md#%E8%A7%86%E9%A2%91%E6%A0%B7%E4%BE%8B

# python demo/video_demo.py \
#     ${VIDEO_FILE} \
#     ${CONFIG_FILE} \
#     ${CHECKPOINT_FILE} \
#     [--device ${GPU_ID}] \
#     [--score-thr ${SCORE_THR}] \
#     [--out ${OUT_FILE}] \
#     [--show] \
#     [--wait-time ${WAIT_TIME}]

# python demo/video_demo.py demo/demo.mp4 \
#     configs/faster_rcnn/faster_rcnn_r50_fpn_1x_coco.py \
#     checkpoints/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth \
#     --out result.mp4


# 视频推理，显卡加速版本
# https://github.com/open-mmlab/mmdetection/blob/master/docs/zh_cn/1_exist_data_model.md#%E8%A7%86%E9%A2%91%E6%A0%B7%E4%BE%8B%E6%98%BE%E5%8D%A1%E5%8A%A0%E9%80%9F%E7%89%88%E6%9C%AC

# python demo/video_gpuaccel_demo.py \
#      ${VIDEO_FILE} \
#      ${CONFIG_FILE} \
#      ${CHECKPOINT_FILE} \
#      [--device ${GPU_ID}] \
#      [--score-thr ${SCORE_THR}] \
#      [--nvdecode] \
#      [--out ${OUT_FILE}] \
#      [--show] \
#      [--wait-time ${WAIT_TIME}]

# 经测试不能直接输入 flv 视频，但是可以接受 mp4 视频。可用下面命令转换
# ffmpeg -i input.flv -y -vcodec copy -acodec copy output.mp4
python demo/video_gpuaccel_demo.py \
    datasets/lingshui/2021-03-06-09-52-50.mp4 \
    configs/my_configs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco.py \
    work_dirs/mask2former_swin-s-p4-w7-224_lsj_8x2_50e_coco_CosineAnnealing/epoch_2000.pth \
    --device cuda:2 \
    --nvdecode \
    --out tmp.mp4