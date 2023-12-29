#!/bin/bash
set -xe
script_directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

container_name="souffle-rammer"

# Check if the Docker image exists
if docker image inspect "$container_name" &>/dev/null; then
    echo "The Docker image $container_name exists."
else
    echo "The Docker image $container_name does not exist."
    docker pull sunqianqi/sirius:mlsys_ae
    docker run --gpus all --name souffle-rammer -dt --privileged\
    -v /home/zhangshuoming/souffle-ae/baseline/rammer/rammer_generated_models:/root/rammer_generated_models \
    sunqianqi/sirius:mlsys_ae /bin/bash
    docker exec -it souffle-rammer /bin/bash -c "cd /root/rammer_generated_models/bert && mkdir -p build && cd build && cmake .. && make -j && cp libnnfusion_naive_rt.so .."
fi
