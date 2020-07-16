#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tannows/ml-microservice:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-microservice --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-microservice-8475fc8b4d-9v72t 8000:80
