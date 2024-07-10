#!/bin/bash
source path.sh

python3 main3_ddp.py \
        --BATCH_SIZE 6 \
        --N_EPOCHS 5000 \
        --save_dir path_to_save_log \
        --resume true \
        --cudnn_deterministic true \
        --resume_path /home/chirag/.cache/huggingface/hub/models--Cyanbox--Prompt-Singer/snapshots/4a9ad215081865e168df26ea4a54cc78e87378a6/codec \
        --train_data_path /home/chirag/dataset/ins/train \
        --valid_data_path /home/chirag/dataset/ins/valid \
        --tensorboard true \
        --sr 16000 \
        --ratios 8 5 4 2 \
        --target_bandwidths 0.5 1 1.5 2 4 \
