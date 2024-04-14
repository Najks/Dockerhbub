#!/bin/bash

# Definiraj ime slike
IMAGE_NAME="najks/orv_vaja2"
TAG="2024-04-13-19-24"

docker pull $IMAGE_NAME:$VERSION_TAG

# Zagnajte Docker kontejner
docker run -d --name my_app_container $IMAGE_NAME:$VERSION_TAG
