materia=$1

echo $materia

if [ "$materia" = "" ]; then
    echo "Por favor, especifica una materia"
    exit 0
fi

if [ "$materia" = "analisis" ]; then
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://famaf.aulavirtual.unc.edu.ar/course/view.php?id=656'"
    sleep 5
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://www.geogebra.org/calculator'"
    sleep 5
    gnome-terminal  -- bash -c "cd /home/nico/colegio/facu-1ro/analisis-matematico/; nvim .; exec bash"
fi


if [ "$materia" = "intro" ]; then
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://famaf.aulavirtual.unc.edu.ar/course/view.php?id=717'"
    sleep 5
    gnome-terminal  -- bash -c "cd /home/nico/colegio/facu-1ro/intro-a-algoritmos/; nvim .; exec bash"
fi


if [ "$materia" = "discreta" ]; then
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://famaf.aulavirtual.unc.edu.ar/course/view.php?id=661'"
    sleep 5
    i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin --new-tab 'https://chatgpt.com/c/69e56bc4-e874-83e9-b902-308e0b0224e5'"
    sleep 5
    gnome-terminal  -- bash -c "cd /home/nico/colegio/facu-1ro/discreta/; nvim .; exec bash"
fi

i3-msg "workspace 2; exec --no-startup-id /usr/bin/obsidian"
sleep 5

i3-msg "workspace 4; exec --no-startup-id ~/binaries/youtube-music-3.11.0/youtube-music"
sleep 5

exit
