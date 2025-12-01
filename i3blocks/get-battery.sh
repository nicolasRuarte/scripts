#!/usr/bin/env bash
battery_percent="$(acpi | grep -Eo "[0-9][0-9]?[0-9]?%")"

echo "Batería: $battery_percent"

[ ${BAT%?} -le  5 ] && exit 33
[ ${BAT%?} -le  20 ] && echo "#FF8000"

exit 0

