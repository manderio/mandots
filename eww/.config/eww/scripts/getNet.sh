#!/bin/sh
device_name=$(ip -j link show | jq -r '.[] | select(.operstate=="UP") | .ifname');  [ -z $device_name ] && echo lo || echo $device_name;
