#!/usr/bin/env bash

echo "Starting \"www\" Docker container..."
# docker run --name www -p 8082:8082/tcp -v $(pwd):/app -d www-image ember server --port 8082 --environment development
docker run --name www -p 8082:8082/tcp -d www-image ember server --port 8082 --environment development
echo "Done."

exit 0
