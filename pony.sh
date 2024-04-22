#!/bin/bash
#SBATCH -A berzelius-2023-49
#SBATCH --gpus 1
#SBATCH -t 3-00:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user cil@kth.se
#SBATCH -o /home/x_cili/x_cili_yy/MagicPony/logs/%A.out
#SBATCH -e /home/x_cili/x_cili_yy/MagicPony/logs/%A.err
#SBATCH --mem 50G

PROJECTPATH=/home/x_cili/x_cili_yy/MagicPony
cd $PROJECTPATH
/home/x_cili/.conda/envs/magicpony/bin/python run.py --config config/quadrupeds/train_horse.yml --gpu 0 --num_workers 4

# python scripts/visualize_results.py \
# --input_image_dir path/to/folder/that/contains/input/images \
# --config path/to/the/test/config.yml \
# --checkpoint_path path/to/the/pretrained/checkpoint.pth \
# --output_dir folder/to/save/the/renderings \
# --render_modes input_view other_views