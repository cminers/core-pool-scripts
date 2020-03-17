#!/usr/bin/env bash

echo "Stopping \"core-pool\" Docker container..."
docker stop core-pool
echo "Removing \"core-pool\" Docker container..."
docker rm core-pool
echo "Done."

exit 0
