#!/bin/bash

set -e

REGISTRY="localhost:32000"

echo "🏗  Building images..."

docker build -t $REGISTRY/chat-backend ./chat-backend
docker build -t $REGISTRY/chat-frontend ./chat-frontend
docker build -t $REGISTRY/ia-backend ./ia-backend
docker build -t $REGISTRY/ia-frontend ./ia-frontend
docker build -t $REGISTRY/joomla ./joomla-custom
docker build -t $REGISTRY/mariadb ./mariadb-custom

echo "📦 Pushing images to local cluster registry..."

docker push $REGISTRY/chat-backend
docker push $REGISTRY/chat-frontend
docker push $REGISTRY/ia-backend
docker push $REGISTRY/ia-frontend
docker push $REGISTRY/joomla
docker push $REGISTRY/mariadb

echo "✅ Build și Push complet!"
