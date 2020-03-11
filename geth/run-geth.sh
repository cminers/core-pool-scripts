#!/usr/bin/env bash

echo "Starting geth-01..."
screen -dmS geth-01 geth --testnet --datadir ./data --port 42370 --rpc --rpcport 13270 --cache=1024 --syncmode=light
echo "Done."

exit 0
