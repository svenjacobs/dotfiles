#!/usr/bin/env pkgx zx

import { VPN_NAME } from './const.mjs'

const status = await $`/usr/sbin/scutil --nc status ${VPN_NAME}`.quiet()
const statusStr = status.toString().split('\n')[0].trim().toLowerCase()

switch (statusStr) {
    case 'connecting':
        echo('VPN is connecting')
        break
    case 'connected':
        echo('VPN is connected')
        break
    case 'disconnected':
        echo('VPN is disconnected')
        break
    default:
        echo(`Unknown VPN status: ${statusStr}`)
}

