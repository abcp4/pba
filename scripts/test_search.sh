#!/bin/bash
export PYTHONPATH="$(pwd)"

python pba/search.py \
    --local_dir "$PWD/results/" \
    --model_name wrn_40_2 \
    --dataset test \
    --data_path /content/data/ \
    --train_size 1000 --val_size 1322 \
    --checkpoint_freq 0 \
    --name "test_search" --gpu 0.19 --cpu 2 \
    --num_samples 16 --perturbation_interval 3 --epochs 160 \
    --explore cifar10 --aug_policy cifar10 \
    --lr 0.1 --wd 0.005 --bs 16 --test_bs 16 --recompute_dset_stats

