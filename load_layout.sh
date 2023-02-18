#/bin/sh

i3-msg "Workspace 2; append_layout ~/.config/i3/workspace_2.json"
(i3-sensible-terminal &)
(google-chrome &)

i3-msg "Workspace 1; append_layout ~/.config/i3/workspace_1.json"
(i3-sensible-terminal &)
(i3-sensible-terminal &) #-e ssh pi@raspberrypi -t "tmux attach || tmux new" &)
#(i3-sensible-terminal -e zsh gotop &)
#(gotop &)

i3-save-tree --workspace 2 > ~/.config/i3/workspace_2_tmp.json
