#!/usr/bin/env bash

./redis-cmd/stop-redis-cmd.sh
./pool-payouts/stop-core-pool-payouts.sh
./pool-ui/stop-pool-ui.sh
./pool/stop-core-pool.sh
./redis/stop-redis.sh
./geth/stop-geth.sh

exit 0
