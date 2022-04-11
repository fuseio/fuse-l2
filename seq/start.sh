#!/bin/sh

# FIXME: Cannot use set -e since bash is not installed in Dockerfile
# set -e

RETRIES=${RETRIES:-40}
VERBOSITY=${VERBOSITY:-6}

# get the genesis file from the deployer
# commented, we are doing manually, added here in the genesis.json

# curl \
#     --fail \
#     --show-error \
#     --silent \
#     --retry-connrefused \
#     --retry-all-errors \
#     --retry $RETRIES \
#     --retry-delay 5 \
#     $ROLLUP_STATE_DUMP_PATH \
#     -o genesis.json

# wait for the dtl to be up, else geth will crash if it cannot connect
# curl \
#     --fail \
#     --show-error \
#     --silent \
#     --output /dev/null \
#     --retry-connrefused \
#     --retry $RETRIES \
#     --retry-delay 1 \
#     $ROLLUP_CLIENT_HTTP

# import the key that will be used to locally sign blocks
# this key does not have to be kept secret in order to be secure
# we use an insecure password ("pwd") to lock/unlock the password
echo "Importing private key"
echo $BLOCK_SIGNER_KEY > key.prv
echo "pwd" > password
./build/bin/geth account import --password ./password ./key.prv

# initialize the geth node with the genesis file
echo "Initializing Geth node"
./build/bin/geth --verbosity="$VERBOSITY" "$@" init genesis.json

# start the geth node
echo "Starting Geth node"
./build/bin/geth \
  --rpc \
  --nousb \
  --rpcport 8545 \
  --networkid=125 \
  --verbosity="$VERBOSITY" \
  --password ./password \
  --allow-insecure-unlock \
  --unlock $BLOCK_SIGNER_ADDRESS \
  --mine \
  --miner.etherbase $BLOCK_SIGNER_ADDRESS \
  "$@"
