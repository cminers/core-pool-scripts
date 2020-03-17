#!/usr/bin/env bash

echo "Building \"core-pool-image\" Docker image..."
docker build -t core-pool-image .
echo "Done."

exit 0
