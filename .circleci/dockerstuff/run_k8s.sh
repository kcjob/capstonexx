#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=joepub/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run capstone --image=docker.io/joepub/capstone --port=8000

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/capstone --address 0.0.0.0 8000:8000
