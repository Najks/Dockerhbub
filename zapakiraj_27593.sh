#!/bin/bash

# Build Docker image
docker build . --file Dockerfile --tag najks/orv_vaja2:latest

# Log into DockerHub using GitHub secrets
echo ${{ secrets.DOCKER_PASSWORD }} | docker login --username ${{ secrets.DOCKER_USERNAME }} --password-stdin

# Push Docker image to DockerHub
docker push najks/orv_vaja2:latest
