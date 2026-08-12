#!/usr/bin/env bash

MATERIA=$1


if [ "$MATERIA" = "" ]; then
    echo "Por favor, especifica una materia"
    exit 0
fi

if [ "$MATERIA" = "analisis" ]; then
    z analisis-2; nvim .
fi

if [ "$MATERIA" = "discreta" ]; then
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://famaf.aulavirtual.unc.edu.ar/course/view.php?id=661'"
    sleep 5
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://chatgpt.com/c/69e56bc4-e874-83e9-b902-308e0b0224e5'"
    sleep 5
    gnome-terminal  -- bash -c "cd /home/nico/colegio/facu-1ro/discreta/; nvim .; exec bash"
fi

if [ $MATERIA = "algebra" ] ; then
    z algebra; nvim .
fi

if [ $MATERIA = "algo-1" ] ; then
    z algos-1; nvim .
fi

i3-msg "workspace 2; exec --no-startup-id /usr/bin/obsidian"
sleep 5

exit
