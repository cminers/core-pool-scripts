#!/usr/bin/env bash

echo "Starting \"core-pool\" Docker container..."
docker run --name core-pool --net="host" -d core-pool-image
echo "Done."

exit 0
