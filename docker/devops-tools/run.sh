#!/bin/bash
set -e

IMAGE_TAG="tutim-ai-devops-tools"

# docker run -it --rm -v ${PWD}/.configure:/root/.aws --entrypoint bash "$IMAGE_TAG"
# --privileged

CURRENT_DIR=`pwd`
CONFIG_DIR="${CURRENT_DIR}/docker/aws-cli/.configure"
# SECRETS_DIR="${CURRENT_DIR}/docker/aws-cli/.secrets"

# -v $SECRETS_DIR:/root/.secrets \
docker run -it --rm \
    -w /devops \
    -v $CURRENT_DIR:/devops \
    -v $CONFIG_DIR:/root/.aws \
    --entrypoint bash "$IMAGE_TAG"


