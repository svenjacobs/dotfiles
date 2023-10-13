#!/usr/bin/env pkgx zx

import { VPN_NAME } from './const.mjs'

await $`/usr/sbin/scutil --nc stop ${VPN_NAME}`.quiet()
echo('Disconnecting from VPN')

