#!/bin/bash

#open ps project and vim
tmux send-keys "cd ~/sites/petshop && nvim" C-m

#split and resize
tmux split-window -h -c '#{pane_current_path}'
tmux select-pane -t 0
tmux resize-pane -R 70

#task warrior pane
tmux select-pane -t 1
tmux send-keys "task" C-m
tmux split-window -v -c '#{pane_current_path}'

#clock mode pane
tmux select-pane -t 3
tmux clock-mode

tmux select-pane -t 0
