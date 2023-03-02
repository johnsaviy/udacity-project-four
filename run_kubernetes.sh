#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=johnsavy/machine-learning-app


# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run machine-learning-app --image=$dockerpath 
kubectl run machine-learning-app --image=$dockerpath --port=80 --labels app=machine-learning-app 

# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
#kubectl port-forward ml-app 8080:80 
kubectl port-forward machine-learning-app 8000:80

 

