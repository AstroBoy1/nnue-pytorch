#!/bin/bash
# sh scripts/train.sh

python train.py \
 ../../stockfish_train_data/lichess_db_puzzle_train.binpack \
 --validation-data ../../stockfish_train_data/lichess_db_puzzle_val.binpack \
 --gpus 1 \
 --resume-from-model models/nn_HalfKAv2_hm.pt \
 --num-workers 48 \
 --epoch-size 3_600_000 \
 --validation-size 400_000 \
 --num-workers 48 \
 --max_epochs=400
