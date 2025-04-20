#!/bin/bash

BACKEND_IMAGE=raniyoussef/backend
FRONTEND_IMAGE=raniyoussef/frontend

echo "Building backend image..."
docker build -t $BACKEND_IMAGE ./backend

echo "Building frontend image..."
docker build -t $FRONTEND_IMAGE ./frontend

echo "Pushing backend image to Docker Hub..."
docker push $BACKEND_IMAGE

echo "Pushing frontend image to Docker Hub..."
docker push $FRONTEND_IMAGE

echo " All images built and pushed successfully."
