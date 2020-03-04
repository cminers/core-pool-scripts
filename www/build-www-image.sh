#!/usr/bin/env bash

echo "Building \"www-image\" Docker image..."
docker build -t www-image .
echo "Done."

exit 0
