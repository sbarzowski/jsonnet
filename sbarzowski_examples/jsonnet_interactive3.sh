#!/bin/sh 
set +e

tmux new-session -s 'jsonnet-interactive' -d 'while true; do vim tmp.jsonnet; done'
tmux split-window -v 'watch cat tmp.jsonnet' 
tmux -2 attach-session -d -t jsonnet-interactive
