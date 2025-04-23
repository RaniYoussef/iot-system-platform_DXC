#!/bin/bash

echo " Building Docker Images..."

# Build backend
docker build -t iot-system-project_backend ./backend

# Build frontend
docker build -t iot-system-project_frontend ./frontend-angular

echo " Docker images built successfully."

# Optional: Push to Docker Hub
# docker push your-dockerhub/iot-system-project_backend
# docker push your-dockerhub/iot-system-project_frontend
