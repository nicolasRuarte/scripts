#!/usr/bin/env bash

SESSION_NAME="estudio"

if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    echo "Sesión ya existe, enganchandóse a ella"
    tmux attach-session -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "estudio"
tmux send-keys -t $SESSION_NAME:1 "z discr; nvim ." Enter
tmux attach-session -t $SESSION_NAME
