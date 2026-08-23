#!/usr/bin/env bash

SESSION_NAME="ia-love"

if [ tmux has-session -t $SESSION_NAME 2>/dev/null ]; then
    tmux attach -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "coding"
tmux send-keys -t $SESSION_NAME:1 "z ia-love backend; nvim ." Enter

tmux new-window -t $SESSION_NAME -n "server"
tmux send-keys -t $SESSION_NAME:2 "z ia-love backend; go run ." Enter

tmux new-window -t $SESSION_NAME -n "curl"
tmux send-keys -t $SESSION_NAME:3 "echo 'Utiliza los comandos curl que quieras'" Enter

tmux attach -t $SESSION_NAME
