#!/bin/bash

PUMA_INPUT_FILE=${1}

PUMA_GIT_REPO=https://github.com/KVD-lab/puma.git
PUMA_VERSION=1.2.2


# Define and create puma-runner's data and cache folders
PUMA_RUNNER_DATA_DIR=~/.puma-runner/data
PUMA_RUNNER_CACHE_DIR=~/.puma-runner/cache
mkdir -p ${PUMA_RUNNER_DATA_DIR}
mkdir -p ${PUMA_RUNNER_CACHE_DIR}


# Clone KVD-lab/puma repository to get access to its 'data_dir'
git -C ${PUMA_RUNNER_CACHE_DIR} clone ${PUMA_GIT_REPO} repository || true
# TODO: if repo already exists update local.


# Copy input data inside puma-runner's data folder
cp ${PUMA_INPUT_FILE} ${PUMA_RUNNER_DATA_DIR}/input.fas

docker run --rm \
    -v ${PUMA_RUNNER_DATA_DIR}:/puma-data \
    -v ${PUMA_RUNNER_CACHE_DIR}:/puma-cache \
    kvdlab/puma:${PUMA_VERSION} \
    run_puma.py -i /puma-data/input.fas -o /puma-data/puma-results -d /puma-cache/repository/data_dir/
