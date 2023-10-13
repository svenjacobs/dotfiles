#!/usr/bin/env sh

# @raycast.schemaVersion 1
# @raycast.title Disconnect from VPN
# @raycast.mode silent
# @raycast.packageName VPN
# @raycast.icon 🌍

/bin/bash -c "pkgx zx -- src/vpn-disconnect.mjs"

