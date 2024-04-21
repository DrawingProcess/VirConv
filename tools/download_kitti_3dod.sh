#!/usr/bin/bash

#SBATCH -J download_kitti_3dod
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=16G
#SBATCH -p batch_ugrad
#SBATCH -t 1-0
#SBATCH -o logs/slurm-%A.outs

if [ "$#" -ne 1 ]; then
    echo "Please, provide the base directory to store the dataset."
    exit 1
fi

if ! command -v unzip &> /dev/null
then
    echo "Error: unzip could not be found. Please, install it to continue"
    exit
fi

BASE_DIR="$1"/kitti

mkdir -p $BASE_DIR

url_velodyne="https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_velodyne.zip"
url_calib="https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_calib.zip"
url_label="https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_label_2.zip"
url_image="https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_image_2.zip"
<<<<<<< HEAD
url_image="https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_image_3.zip"
=======
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818

wget -c -N -O $BASE_DIR'/data_object_velodyne.zip' $url_velodyne
wget -c -N -O $BASE_DIR'/data_object_calib.zip' $url_calib
wget -c -N -O $BASE_DIR'/data_object_label_2.zip' $url_label
wget -c -N -O $BASE_DIR'/data_object_image_2.zip' $url_image
<<<<<<< HEAD
wget -c -N -O $BASE_DIR'/data_object_image_3.zip' $url_image
=======
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818

cd $BASE_DIR

unzip data_object_velodyne.zip
unzip data_object_calib.zip
unzip data_object_label_2.zip
unzip data_object_image_2.zip
<<<<<<< HEAD
unzip data_object_image_3.zip
=======
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818

mkdir zip_files
mv data_object_velodyne.zip zip_files
mv data_object_calib.zip zip_files
mv data_object_label_2.zip zip_files
mv data_object_image_2.zip zip_files
<<<<<<< HEAD
mv data_object_image_3.zip zip_files

=======
>>>>>>> 9d64ea8def8235b8e5903fef02ab33f06f932818