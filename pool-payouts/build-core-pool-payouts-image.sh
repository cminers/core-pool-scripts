#!/usr/bin/env bash

echo "Building \"core-pool-payouts-image\" Docker image..."
docker build -t core-pool-payouts-image .
echo "Done."

exit 0
