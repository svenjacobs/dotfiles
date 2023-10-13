#!/usr/bin/env pkgx zx

import { VPN_NAME } from './const.mjs'

await $`/usr/sbin/scutil --nc start ${VPN_NAME}`.quiet()
echo('Connecting to VPN')

