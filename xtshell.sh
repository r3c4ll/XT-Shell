#!/bin/bash
# by Ali Moreno <http://alimoreno.info>

# Window 0 "Syslog" / Pane 0
tmux new-session -s 'XT Shell' -n Syslog \; \
  send-keys 'sudo multitail /var/log/syslog' C-m \; \
  # Window 1 "System" / Pane 0
  new-window -n System \; \
  send-keys 'htop' C-m \; \
  # Window 1 "System" / Pane 1
  split-window -v \; \
  send-keys 'watch -n 1 df -H' C-m \; \
  # Window 1 "System" / Pane 3
  split-window -h \; \
  send-keys 'nload eth0' C-m \; \
  # Window 1 "System" / Pane 2
  select-pane -t 1 \; \
  split-window -v \; \
  # Window 2 "Dev" / Pane 0
  new-window -n Dev \; \
  # Window 2 "Dev" / Pane 2
  split-window -h -p 50 \; \
  send-keys 'vim .vimrc' C-m \; \
  # Window 2 "Dev" / Pane 0
  select-pane -t 0 \; \
  # Window 2 "Dev" / Pane 1
  split-window -v -p 30 \; \
  send-keys 'clear;python3' C-m \; \
  # Window 2 "Dev" / Pane 2
  select-pane -t 2 \; \
  # Window 3 "Bash" / Pane 0
  new-window -n Bash \; \
  split-window -h \; \
  split-window \; \
  select-pane -t 0 \; \
  split-window \; \
  select-pane -t 0 \; \
  selectw -t 1 \; \
  selectp -t 2 \;
