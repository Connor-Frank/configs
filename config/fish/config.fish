# default editor
set -Ux EDITOR vim

# alias for the "doom" terminal command
alias doom='~/.emacs.d/bin/doom'
funcsave doom

# this is an interesting package, if you mess up a command you can type "fuck" in terminal and it guesses at what you meant
thefuck --alias | source

# creates a tmux session named as the current directory and containing two windows
function tmx
  set name (basename $PWD)
  tmux new-session -d -s $name
  tmux new-window -d
  tmux attach-session -d -t $name
end
funcsave tmx

# you can find this script in my repository "scripts"
alias build-cmake='~/projects/scripts/cmake/build.sh'
funcsave build-cmake

# you can find this script in my repository "scripts"
function run-cmake
  set runfile (~/projects/scripts/cmake/run.sh)
  $runfile $argv[1..-1]
end
funcsave run-cmake

# launch vscode insiders at current directory and close terminal
alias vs='code-insiders . && exit'
funcsave vs

# exa is a cooler ls command that is colored and has file/folder icons
alias show='exa -al --icons'
funcsave show

# my favorite way to run tty-clock
alias clock='tty-clock -s -c -f "%d.%m.%Y"'
funcsave clock

# a cool clock i found (https://github.com/joshdk/tty-qlock)
alias textclock='~/sync/scripts/tty-qlock-1.0.0/./dist/qlock -on-color green'
funcsave textclock

# gets rid of the fish greeting
set fish_greeting
