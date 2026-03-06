#!/bin/bash

echo "Starting Universal Database Server..."

docker compose pull
docker compose up -d

echo "All services started."
