# Prerequisites

**Please ensure you have prepared the environment and the SemanticKITTI dataset.**

# Train and Test

## Stage-1: Class-Agnostic Query Proposal
Train QPN with 4 GPUs 
```
<<<<<<< HEAD
./classifiers/dist_train.sh ./main/configs/semanticEx/qpn.py 4
=======
./classifiers/distributed_training.sh ./main/configs/voxformer/qpn.py 4
>>>>>>> 00530ab88be0669494840c7eb11afbcbb84f5e76
```

Eval QPN with 4 GPUs
```
<<<<<<< HEAD
./classifiers/dist_test.sh ./main/configs/semanticEx/qpn.py ./path/to/ckpts.pth 4
=======
./classifiers/distributed_testing.sh ./main/configs/voxformer/qpn.py ./path/to/ckpts.pth 4
>>>>>>> 00530ab88be0669494840c7eb11afbcbb84f5e76
```
## Stage-2: Class-Specific Voxel Segmentation
Train with temporal information with 4 GPUs 
```
<<<<<<< HEAD
./classifiers/dist_train.sh ./main/configs/semanticEx/semanticEx-T.py 4
=======
./classifiers/distributed_training.sh ./main/configs/voxformer/voxformer-T.py 4
>>>>>>> 00530ab88be0669494840c7eb11afbcbb84f5e76
```

Eval with temporal information with 4 GPUs
```
<<<<<<< HEAD
./classifiers/dist_test.sh ./main/configs/semanticEx/semanticEx-T.py ./path/to/ckpts.pth 4
=======
./classifiers/distributed_testing.sh ./main/configs/voxformer/voxformer-T.py ./path/to/ckpts.pth 4
>>>>>>> 00530ab88be0669494840c7eb11afbcbb84f5e76
```
