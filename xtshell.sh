#!/bin/bash
# by Ali Moreno <http://alimoreno.info>

tmux new-session -s 'XT Shell' -n Syslog \; \
  send-keys 'sudo multitail /var/log/syslog' C-m \; \
  new-window -n System \; \
  send-keys 'htop' C-m \; \
  split-window -v \; \
  send-keys 'watch -n 1 df -H' C-m \; \
  split-window -h \; \
  send-keys 'nload eth0' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  new-window -n Dev \; \
  split-window -h -p 50 \; \
  send-keys 'vim .vimrc' C-m \; \
  select-pane -t 0 \; \
  split-window -v -p 30 \; \
  send-keys 'clear;python3' C-m \; \
  select-pane -t 2 \; \
  new-window -n Bash \; \
  split-window -h \; \
  split-window \; \
  select-pane -t 0 \; \
  split-window \; \
  select-pane -t 0 \; \
  selectw -t 1 \; \
  selectp -t 2 \;
