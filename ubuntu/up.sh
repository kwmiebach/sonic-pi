#!/bin/bash

# Check which docker compose command to use
DOCKER_COMPOSE=$(command -v docker-compose &>/dev/null && echo "docker-compose" || echo "docker compose")

# Run the docker compose file, add -d to run in the background
$DOCKER_COMPOSE up
