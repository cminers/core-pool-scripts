#!/usr/bin/env bash

docker ps --filter "name=core-pool-payouts" | grep -i "[c]ore-pool-payouts" > /dev/null
exit_code=$?
if [ $exit_code -eq 0 ]
then
  echo "Stopping \"core-pool-payouts\" Docker container..."
  docker stop core-pool-payouts > /dev/null
fi

docker ps -a --filter "name=core-pool-payouts" | grep -i "[c]ore-pool-payouts" > /dev/null
exit_code=$?
if [ $exit_code -eq 0 ]
then
  echo "Removing \"core-pool-payouts\" Docker container..."
  docker rm core-pool-payouts > /dev/null
fi

echo "Done."

exit 0
