#!/bin/bash
set -e

IMAGE_TAG="tutim-ai-devops-tools"
DOCKERFILE="devops-tools.dockerfile"

docker build -f "$DOCKERFILE" -t "$IMAGE_TAG" .


