#!/usr/bin/env bash

# Setting configuration and GPU parameters
CONFIG=$1
GPUS=$2
PORT=${PORT:-28509}

# Setting PYTHONPATH to include relevant directories
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \

# Launching distributed training using PyTorch, with specified parameters
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/train.py $CONFIG --launcher pytorch ${@:3} --deterministic
