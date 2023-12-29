#!/bin/bash
set -xe
/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/bert/bert_1_384_768_3072.mlir \
     -o /workspace/iree_models/bert/bert_1_384_768_3072.vmbf

/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/efficientnet/efficientnet-b0.mlir \
     -o /workspace/iree_models/efficientnet/efficientnet-b0.vmbf

/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/efficientnet/efficientnet-b0.mlir \
     -o /workspace/iree_models/efficientnet/efficientnet-b0.vmbf

/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/resnext/resnext_imagenet_101.mlir \
     -o /workspace/iree_models/resnext/resnext_imagenet_101.vmbf

/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/swin-transformer/swin-transformer.mlir \
     -o /workspace/iree_models/swin-transformer/swin-transformer.vmbf


/workspace/iree-build/tools/iree-compile \
    --iree-hal-target-backends=cuda \
    /workspace/iree_models/mmoe/tf_MMoE_1_100_16_8_2.mlir \
     -o /workspace/iree_models/mmoe/tf_MMoE_1_100_16_8_2.vmbf
