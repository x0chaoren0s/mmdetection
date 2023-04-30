# 新配置继承了基本配置，并做了必要的修改
_base_ = '../../mask_rcnn/mask-rcnn_r101-caffe_fpn_ms-poly-3x_coco.py'

# 我们还需要更改 head 中的 num_classes 以匹配数据集中的类别数
model = dict(
    roi_head=dict(
        bbox_head=dict(num_classes=1), mask_head=dict(num_classes=1)))

# 修改数据集相关配置
data_root = 'datasets/balloon/balloon/'
metainfo = {
    'classes': ('balloon', ),
    'palette': [
        (220, 20, 60),
    ]
}
train_dataloader = dict(
    batch_size=1,
    # 父配置的train_dataloader的dataset是RepeatDataset，其内部dataset才是CocoDataset才是硬盘数据源
    dataset=dict(
        dataset=dict(
            data_root=data_root,
            ann_file='train/annotation_coco.json',
            data_prefix=dict(img='train/'),
            metainfo=metainfo
        )))
val_dataloader = dict(
    # 父配置的val_dataloader的dataset就是CocoDataset，本身就是硬盘数据源
    dataset=dict(
        data_root=data_root,
        ann_file='val/annotation_coco.json',
        data_prefix=dict(img='val/'),
        metainfo=metainfo
        ))
test_dataloader = val_dataloader

optim_wrapper = dict(
    type='OptimWrapper',
    # optimizer=dict(type='SGD', lr=0.02, momentum=0.9, weight_decay=0.0001))
    optimizer=dict(type='RMSprop', lr=0.02, momentum=0.9, weight_decay=0.0001))


# 修改评价指标相关配置
val_evaluator = dict(ann_file=data_root + 'val/annotation_coco.json')
test_evaluator = val_evaluator

# 可视化
vis_backends = [
    dict(type='LocalVisBackend'),
    dict(type='TensorboardVisBackend'),
]
visualizer = dict(
    type='DetLocalVisualizer', vis_backends=vis_backends, name='visualizer')


# 使用预训练的 Mask R-CNN 模型权重来做初始化，可以提高模型性能
load_from = 'https://download.openmmlab.com/mmdetection/v2.0/mask_rcnn/mask_rcnn_r101_caffe_fpn_mstrain-poly_3x_coco/mask_rcnn_r101_caffe_fpn_mstrain-poly_3x_coco_20210526_132339-3c33ce02.pth'
