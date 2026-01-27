#!/usr/bin/env bash
battery_percent="$(acpi | grep -Eo '[0-9][0-9]?[0-9]?%')"
battery_state="$(acpi | grep -Eo 'Charging')"

if [ $battery_state = "Charging" ]; then
    echo "Batería: $battery_percent"
    exit 0
fi

# battery_percent devuelve el valor con porcentaje (ej: 10%), el //% le quita el símbolo porcentaje
if [ "${battery_percent//%}" -eq 20 ]; then
    notify-send -t 5000 "Batería baja" "Cargá la batería, por favor"
fi

if [ "${battery_percent//%}" -eq 10 ]; then
    notify-send -t 5000 "Batería baja" "Cargá la batería, por favor"
fi

if [ "${battery_percent//%}" -eq 5 ]; then
    notify-send -t 5000 -u critical "Batería baja" "Cargá la batería, por favor"
fi

echo "Batería: $battery_percent"

exit 0

