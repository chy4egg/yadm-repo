#!/bin/bash

# new tmux window
# tmux new-window

#the main git pane
tmux split-window -h -c '#{pane_current_path}'
tmux select-pane -t 0
tmux send-keys "ssh develop" C-m
tmux send-keys "git status" C-m

#tail logs pane
tmux split-window -v -c '#{pane_current_path}'
tmux select-pane -t 1
tmux send-keys "ssh develop" C-m
tmux send-keys "cd common/logs && tail -f lessc.log" C-m

#js ps desktop and mobile
tmux select-pane -t 2
tmux split-window -v -c '#{pane_current_path}'
tmux send-keys "ssh develop" C-m
tmux send-keys "cd nodejs/ && export NODE_SITE=ps && npm start" C-m
tmux split-window -v -c '#{pane_current_path}'
tmux send-keys "ssh develop" C-m
tmux send-keys "cd nodejs/ && export NODE_SITE=ps-mobile && npm start" C-m

#a pane for ./lc command
tmux select-pane -t 2
tmux send-keys "ssh develop" C-m
tmux send-keys "./lc" C-m

#back to the git pane
tmux select-pane -t 0

# if resizing needed
# tmux resize-pane -D 20
