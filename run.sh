#!/bin/bash

PUMA_VERSION=1.2.2
PUMA_WORKING_DIR=${HOME}/tmp/puma
PUMA_INPUT_FILE=${1}

mkdir -p ${PUMA_WORKING_DIR}
cp ${PUMA_INPUT_FILE} ${PUMA_WORKING_DIR}/input.fas

docker run --rm \
    -v ${PUMA_WORKING_DIR}:/puma-files \
    kvdlab/puma:${PUMA_VERSION} \
    run_puma.py -i /puma-files/input.fas -o /puma-files/puma-out -d /puma-files/repo/puma/data_dir/
