#!/bin/bash
device_name=$(ip -j link show | jq -r '.[] | select(.operstate=="UP") | .ifname'); [ -z "dev" ] && echo "No Network" || echo $device_name
