# Prerequisites

**Please ensure you have prepared the environment and the SemanticKITTI dataset.**

# Train and Test

## Stage-1: Class-Agnostic Query Proposal
Train QPN with 4 GPUs 
```
./tools/dist_train.sh ./projects/configs/voxformer/qpn.py 4
```

Eval QPN with 4 GPUs
```
./tools/dist_test.sh ./projects/configs/voxformer/qpn.py ./path/to/ckpts.pth 4
```
## Stage-2: Class-Specific Voxel Segmentation
Train with temporal information with 4 GPUs 
```
./tools/dist_train.sh ./projects/configs/voxformer/voxformer-T.py 4
```

Eval with temporal information with 4 GPUs
```
./tools/dist_test.sh ./projects/configs/voxformer/voxformer-T.py ./path/to/ckpts.pth 4
```