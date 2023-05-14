# Prerequisites

**Please ensure you have prepared the environment and the SemanticKITTI dataset.**

# Train and Test

## Stage-1: Class-Agnostic Query Proposal
Train QPN with 4 GPUs 
```
./classifiers/dist_train.sh ./main/configs/semanticEx/qpn.py 4
```

Eval QPN with 4 GPUs
```
./classifiers/dist_test.sh ./main/configs/semanticEx/qpn.py ./path/to/ckpts.pth 4
```
## Stage-2: Class-Specific Voxel Segmentation
Train with temporal information with 4 GPUs 
```
./classifiers/dist_train.sh ./main/configs/semanticEx/semanticEx-T.py 4
```

Eval with temporal information with 4 GPUs
```
./classifiers/dist_test.sh ./main/configs/semanticEx/semanticEx-T.py ./path/to/ckpts.pth 4
```
