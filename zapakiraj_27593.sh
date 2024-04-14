#!/bin/bash

# Build Docker image
docker build . --file Dockerfile --tag najks/orv_vaja2:latest

# Push Docker image to DockerHub
docker push najks/orv_vaja2:latest
