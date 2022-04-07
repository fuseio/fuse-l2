#!/bin/bash

set -e

# As we are hard-coding, let's stop to use the deployer server to set the address
# manager address and add it manually to the dtl.env file

# RETRIES=${RETRIES:-60}
#
# if [[ ! -z "$URL" ]]; then
#     # get the addrs from the URL provided
#     ADDRESSES=$(curl --fail --show-error --silent --retry-connrefused --retry $RETRIES --retry-delay 5 $URL)
#     # set the env
#     export DATA_TRANSPORT_LAYER__ADDRESS_MANAGER=$(echo $ADDRESSES | jq -r '.AddressManager')
# fi

# go
exec node dist/src/services/run.js
