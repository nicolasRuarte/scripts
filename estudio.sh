#!/usr/bin/env bash

MATERIA=$1

if [ "$MATERIA" = "" ]; then
    echo "Por favor, especifica una materia"
    exit 0
fi

SESSION_NAME="estudio"
BROWSER_PATH="/home/nico/binaries/zen/zen-bin"

if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    tmux attach -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "estudio"

# Las operaciones de abrir pestañas en el navegador requieren de ya estar en el workspace de estudio con antelación
if [ "$MATERIA" = "analisis" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z analisis; nvim ." Enter
fi

if [ "$MATERIA" = "analisis-2" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z analisis-2; nvim ." Enter
fi

if [ "$MATERIA" = "discreta" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z discr; nvim ." Enter
fi

if [ $MATERIA = "algebra" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z algebra; nvim ." Enter
    i3-msg "exec --no-startup-id $BROWSER_PATH --new-tab 'file:///home/nico/colegio/facu-1ro/algebra/apunte.pdf'"
    sleep 2
    i3-msg "exec --no-startup-id $BROWSER_PATH --new-tab 'file:///home/nico/colegio/facu-1ro/algebra/tiraboschi.pdf'"
fi

if [ $MATERIA = "algos-1" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z algos-1; nvim ." Enter
fi

i3-msg "workspace 2; exec --no-startup-id /usr/bin/obsidian"
sleep 5
i3-msg "workspace 1; exec --no-startup-id $BROWSER_PATH --new-tab 'https://music.youtube.com'"
tmux attach -t $SESSION_NAME

exit
