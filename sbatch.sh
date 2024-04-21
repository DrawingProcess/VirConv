#!/usr/bin/bash

<<<<<<< HEAD
#SBATCH -J VirConv-train-VirConv-S-only3d-Tepoch40
=======
#SBATCH -J VirConv-train-VirConv-T-only3d
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818
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
<<<<<<< HEAD
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag only2d
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d
python3 train.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --extra_tag only3d --epochs 10 --pretrained_model ../output/models/kitti/VirConv-T/only3d/ckpt/checkpoint_epoch_40.pth

# fine tuning
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d --start_epoch 40 --ckpt ../output/models/kitti/VirConv-T/only2d/ckpt/checkpoint_epoch_40.pth

# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag default --ckpt ../output/models/kitti/VirConv-L/default/ckpt/checkpoint_epoch_50.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-L/only2d/ckpt/checkpoint_epoch_50.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --extra_tag only3d --ckpt ../output/models/kitti/VirConv-L/only3d/ckpt/checkpoint_epoch_50.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag default --ckpt ../output/models/kitti/VirConv-T/default/ckpt/checkpoint_epoch_50.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-T/only2d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only3d --ckpt ../output/models/kitti/VirConv-T/only3d/ckpt/checkpoint_epoch_40.pth
# python3 test.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --extra_tag only2d --ckpt ../output/models/kitti/VirConv-S/only3d/ckpt/checkpoint_epoch_5.pth
=======
python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml --extra_tag only2d
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-T.yaml
# python3 train.py --cfg_file cfgs/models/kitti/VirConv-S.yaml --pretrained_model ../output/models/kitti/VirConv-T/default/ckpt/checkpoint_epoch_40.pth

# python3 test.py --cfg_file cfgs/models/kitti/VirConv-L.yaml --ckpt ../output/models/kitti/VirConv-L/default/ckpt/checkpoint_epoch_50.pth
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818

exit 0
