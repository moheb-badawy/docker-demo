#!/usr/bin/env bash

dockerpath="mohebbadawy/hello-docker"

# Run in Docker Hub container with kubernetes
kubectl run hello-docker-app\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=hello-docker-app

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward hello-docker-app 8000:80
