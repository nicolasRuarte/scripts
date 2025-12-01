#!/usr/bin/env bash

temp_miliseconds="$(cat /sys/class/thermal/thermal_zone0/temp)"
temp="$(echo "$temp_miliseconds" "/ 1000" | bc)"

echo "$temp°C"
