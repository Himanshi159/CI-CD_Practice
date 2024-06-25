#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)  # `-q` returns only the container IDs

if [ -n "$containerid" ]; then  # Check if there are any running containers
    docker rm -f $containerid
    echo "Stopped and removed container(s): $containerid"
else
    echo "No running containers to stop."
fi
