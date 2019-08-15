#!/bin/bash
export PYTHONPATH="$(pwd)"

python pba/search2.py \
    --local_dir "$PWD/results/" \
    --model_name shake_shake_96 \
    --dataset test \
    --data_path /content/data/ \
    --train_size 2600 --val_size 2600 \
    --checkpoint_freq 15 \
    --name "test_search" --gpu 1 --cpu 2 \
    --num_samples 16 --perturbation_interval 3 --epochs 1800 \
    --explore cifar10 --aug_policy cifar10 \
    --lr 0.01 --wd 0.001 --bs 8 --test_bs 8 --recompute_dset_stats
