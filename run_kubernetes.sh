#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=eldeeno/microservice-model:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy microservice-model123 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/microservice-model123-68d5879b6c-kzp5s --address 0.0.0.0 8000:80