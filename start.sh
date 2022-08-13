#!/bin/bash

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/home/ivan/source/android/.ccache/crdroid-11

if [ ! -d "$CCACHE_DIR" ]; then
    mkdir "$CCACHE_DIR"
fi

# Set ccache 50GB
ccache -M 50G -F 0

. build/envsetup.sh

brunch willow
