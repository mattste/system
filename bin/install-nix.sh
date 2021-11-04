#! /usr/bin/env bash

RELEASE="nix-2.5pre20211019_4a2b7cc"
URL="https://github.com/numtide/nix-unstable-installer/releases/download/$RELEASE/install"

[[ ! -z "$1" ]] && URL="$1"

if command -v nix > /dev/null; then
    echo "nix is already installed on this system."
else
    bash <(curl -L $URL) --daemon 
fi
