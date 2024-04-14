#!/bin/bash

# Nastavitev poti do Dockerfile
DOCKERFILE_PATH="/home/vboxuser/new_repo/Dockerfile"
# Definiraj ime slike
IMAGE_NAME="najks/orv_vaja2"
TAG="latest"

# Prijava v DockerHub
echo "$DOCKER_PASSWORD" | docker login --username $DOCKER_USERNAME --password-stdin

# Zgradite Docker sliko
docker build -t $IMAGE_NAME:$TAG .

# Potisnite sliko v DockerHub
docker push $IMAGE_NAME:$TAG
