#!/usr/bin/env bash

set -euo pipefail

trap 'echo "Error at ${BASH_SOURCE[0]}:$LINENO"' ERR

cachix --version
echo

cachixCache=cachix-bug-repro-ea

tmpDir=$(mktemp -d -p /tmp)
trap 'rm -rf $tmpDir' EXIT

src=repro-minimal.nix
# Use this if `repro-minimal.nix` doesn't trigger the bug
# src=repro-systemd.nix

nix-instantiate $src --add-root "$tmpDir/drv" --indirect > /dev/null
printf "instantiated "; realpath "$tmpDir/drv"
cachix watch-exec $cachixCache nix-build -- --debug "$tmpDir/drv" >/dev/null
