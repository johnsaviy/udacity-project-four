#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=johnsavy/machine-learning-app 

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u johnsavy

docker tag machine-learning-app $dockerpath:latest

# Step 3:
# Push image to a docker repository

docker push $dockerpath:latest 
