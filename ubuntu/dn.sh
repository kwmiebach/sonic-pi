
#!/bin/bash

# Check which docker compose command to use
DOCKER_COMPOSE=$(command -v docker-compose &>/dev/null && echo "docker-compose" || echo "docker compose")

# Run the docker compose file
$DOCKER_COMPOSE down
