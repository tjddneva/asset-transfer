#!/bin/bash

set -e

# don't rewrite paths for Windows Git Bash users


# clean out any old identites in the wallets
rm -rf wallet/*

# launch network; create channel and join peer to channel

pushd ../network

./startnetwork.sh

sleep 10

./createchannel.sh

sleep 10

./setAnchorPeerUpdate.sh

sleep 10

./deployCC.sh

popd