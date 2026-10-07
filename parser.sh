#!/usr/bin/env bash

i3-msg "workspace 1; $BROWSER"

SESSION_NAME="parser-learning"

if [ tmux has-session -t $SESSION_NAME 2>/dev/null ]; then
    tmux attach -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "coding"
tmux send-keys -t $SESSION_NAME:1 "z parser; nvim ." Enter

tmux new-window -t $SESSION_NAME -n "testing"
tmux send-keys -t $SESSION_NAME:2 "z parser" Enter

tmux attach -t $SESSION_NAME
