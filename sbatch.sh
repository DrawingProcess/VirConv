#!/usr/bin/bash

#SBATCH -J VirConv-train-VirConv-T-only3d
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
python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --pretrained_model ../output/models/kitti/VirConv-T/default/ckpt/checkpoint_epoch_40.pth

# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --ckpt ../output/models/kitti/VirConv-L/default/ckpt/checkpoint_epoch_50.pth

exit 0
