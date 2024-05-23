#!/usr/bin/bash

#SBATCH -J VirConv-test-VirConv-L2-decrease2d3d
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=32G
#SBATCH -p batch_ugrad
#SBATCH -t 3-0
#SBATCH -o logs/slurm-%A.outs

cat $0
pwd
which python
hostname

# cd tools/PENet
# python3 main.py --detpath ../../data/kitti/training
# python3 main.py --detpath ../../data/kitti/testing
# python3 main.py --detpath ../../data/kitti/semi

# cd ../..
# python3 -m pcdet.datasets.kitti.kitti_dataset_mm create_kitti_infos tools/cfgs/dataset_configs/kitti_dataset.yaml
# python3 -m pcdet.datasets.kitti.kitti_datasetsemi create_kitti_infos tools/cfgs/dataset_configs/kitti_dataset.yaml

# python setup.py develop

cd tools
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T-backbone.yaml --extra_tag backBone8x
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --extra_tag only3d --pretrained_model ../output/models/kitti/VirConv-T/only3d/ckpt/checkpoint_epoch_35.pth
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag t2 --pretrained_model ../ckpt/VirConv-T2.pth
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag t2_decrease2d3d

# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag default --ckpt ../output/models/kitti/VirConv-L/default/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-L/only2d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag only3d --ckpt ../output/models/kitti/VirConv-L/only3d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag default --ckpt ../output/models/kitti/VirConv-T/default/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-T/only2d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only3d --ckpt ../output/models/kitti/VirConv-T/only3d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-S/only3d/ckpt/checkpoint_epoch_5.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag t2 --ckpt ../ckpt/VirConv-T2.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag layer_decrease3d --ckpt ../ckpt/VirConv-T2.pth
python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag l2 --ckpt ../ckpt/VirConv-L2.pth

# python demo.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --ckpt ../output/models/kitti/VirConv-T/default/ckpt/checkpoint_epoch_50.pth    --data_path ../../../data/kitti_ori/testing/velodyne/000008.bin
# python demo.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --ckpt ../ckpt/VirConv-T2.pth --data_path ~/Dataset/Fog-kitti/velodyne/000008.bin
# python demo.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --ckpt ../ckpt/VirConv-T2.pth --data_path ~/Dataset/Fog-kitti/velodyne
exit 0
