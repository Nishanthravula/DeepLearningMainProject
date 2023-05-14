#!/usr/bin/env bash

# Setting configuration, checkpoint, and GPU parameters
CONFIG=$1
CHECKPOINT=$2
GPUS=$3

PORT=${PORT:-29503}

# Setting PYTHONPATH to include relevant directories
PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \

# Launching distributed testing using PyTorch, with specified parameters
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/test.py $CONFIG $CHECKPOINT --launcher pytorch ${@:4} --eval bbox
    
