export PYTHONPATH="$(pwd)"
#--use_hp_policy --hp_policy /home/ivan/DeepAugmentColab/pbt_policy_4.txt \

python pba/train.py \
    --local_dir /content/pba/results/ --data_path /content/data/ \
    --model_name wrn_40_2 \
    --dataset test \
    --train_size 7000 \
    --val_size 1322 \
    --checkpoint_freq 25 --gpu 1 --cpu 2 \
    --use_hp_policy --hp_policy /content/pba/schedules/aug.txt \
    --hp_policy_epochs 200 \
    --aug_policy cifar10 --name "test_search" \
    --lr 0.1 --wd 0.0005 \
    --recompute_dset_stats
