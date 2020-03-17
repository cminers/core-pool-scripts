#!/usr/bin/env bash

echo "Starting \"eth-pool-payouts\" Docker container..."
screen -dmS core-pool-payouts docker run --name core-pool-payouts --net="host" core-pool-payouts-image

loop_counter=10
exit_code=1
while [ $exit_code -ne 0 ]; do
    if [ $loop_counter -eq 0 ]
    then
        echo "Error! Timeout reached. Container not started."
        exit 1
    fi

    loop_counter=$(( $loop_counter - 1 ))

    sleep 1
    docker ps --filter "name=core-pool-payouts" | grep -i "[c]ore-pool-payouts" > /dev/null
    exit_code=$?
done

docker ps --filter "name=core-pool-payouts"
echo "Done."

exit 0
