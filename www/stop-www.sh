#!/usr/bin/env bash

echo "Stopping \"www\" Docker container..."
docker stop www
echo "Removing \"www\" Docker container..."
docker rm www
echo "Done."

exit 0
