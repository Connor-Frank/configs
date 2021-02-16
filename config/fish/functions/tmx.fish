# Defined in /Users/connorfrank/.config/fish/config.fish @ line 22
function tmx
  set name (basename $PWD)
  tmux new-session -d -s $name
  tmux new-window -d
  tmux attach-session -d -t $name
end
