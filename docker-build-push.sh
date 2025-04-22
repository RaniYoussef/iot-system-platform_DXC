#!/bin/bash

# Define image names
BACKEND_IMAGE=raniyoussef/backend
FRONTEND_IMAGE=raniyoussef/angular-frontend

# === Build Backend ===
echo " Building backend Docker image..."
docker build -t $BACKEND_IMAGE ./backend

# === Build Frontend (Angular) ===
echo " Building Angular frontend Docker image..."
docker build -t $FRONTEND_IMAGE ./frontend

# === Push Backend to Docker Hub ===
echo " Pushing backend image to Docker Hub..."
docker push $BACKEND_IMAGE

# === Push Frontend to Docker Hub ===
echo " Pushing Angular frontend image to Docker Hub..."
docker push $FRONTEND_IMAGE

echo " All images built and pushed successfully."
