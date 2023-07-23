#!/bin/bash

echo Executing xhost +local:docker

echo This is not secure, but it is the easiest way to get the GUI to work

echo If you are concerned about security, please see the following link
echo https://stackoverflow.com/questions/28392949/running-chromium-inside-docker-gtk-cannot-open-display-0

xhost +local:docker

echo To revert this change, run
echo xhost -local:docker

# Check which docker compose command to use
DOCKER_COMPOSE=$(command -v docker-compose &>/dev/null && echo "docker-compose" || echo "docker compose")

# Run the docker compose file, add -d to run in the background
$DOCKER_COMPOSE up

xhost -local:docker
