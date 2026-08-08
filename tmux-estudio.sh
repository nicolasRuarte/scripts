#!/usr/bin/env bash

MATERIA=$1

SESSION_NAME="estudio"

if [ $MATERIA = "" ]; then
    echo "Por favor, especifique una materia"
    exit 0
fi

if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    echo "Sesión ya existe, enganchandóse a ella"
    tmux attach-session -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "estudio"

if [ $MATERIA = "discreta" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z discr; nvim ." Enter
fi

if [ $MATERIA = "analisis" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z analisis; nvim ." Enter
fi

if [ $MATERIA = "intro" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z intro; nvim ." Enter
fi

if [ $MATERIA = "analisis-2" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z analisis-2; nvim ." Enter
fi

if [ $MATERIA = "algo-1" ]; then
    tmux send-keys -t $SESSION_NAME:1 "z algo-1; nvim ." Enter
fi

tmux attach-session -t $SESSION_NAME
