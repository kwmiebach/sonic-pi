#!/bin/bash

# Check which docker compose command to use
DOCKER_COMPOSE=$(command -v docker-compose &>/dev/null && echo "docker-compose" || echo "docker compose")

# Run bash in the container
$DOCKER_COMPOSE exec -u 1000 -it sonic-pi /bin/bash
