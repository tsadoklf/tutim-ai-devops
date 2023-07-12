#!/bin/bash


IMAGE_NAME="devops-test"
DOCKERFILE="devops.dockerfile"

docker build -t $IMAGE_NAME -f $DOCKERFILE .

# Don't forget to add execute permission
# chmod +x [NAME OF THE FILE]