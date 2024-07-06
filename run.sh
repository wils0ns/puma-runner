#!/bin/bash

inputFile=${1}
pumaVersion=${PUMA_VERSION:-1.2.2}
runnerDataDir=~/.puma-runner/data

mkdir -p ${runnerDataDir}
cp ${inputFile} ${runnerDataDir}/input.fas

docker run --rm \
    -v ${runnerDataDir}:/puma-data \
    kvdlab/puma:${pumaVersion} \
    run_puma.py \
        -i /puma-data/input.fas \
        -o /puma-data/puma-results \
        -d /app/puma/data_dir/
