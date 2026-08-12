#!/usr/bin/env bash

SESSION_NAME="chat-app-go"

i3-msg "workspace 1; exec --no-startup-id ~/binaries/zen/zen-bin"
sleep 5

if tmux has-session -t  $SESSION_NAME 2>/dev/null; then
    echo "Session $SESSION_NAME already exists. Attaching to it"
    tmux attach-session -t $SESSION_NAME
    exit 0
fi

tmux new -d -s $SESSION_NAME
tmux rename-window -t $SESSION_NAME:1 "back"
tmux send-keys -t $SESSION_NAME:1 "z chat-app back; nvim ." Enter


tmux new-window -t $SESSION_NAME -n "server"
tmux send-keys -t $SESSION_NAME:2 "z chat-app back; go run ." Enter

tmux new-window -t $SESSION_NAME -n "front"
tmux send-keys -t $SESSION_NAME:3 "z chat-app front; nvim ." Enter

tmux attach-session -t $SESSION_NAME
