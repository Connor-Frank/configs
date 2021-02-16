# default editor
set -Ux EDITOR vim

# for pyenv
#set PYENV_ROOT $HOME/.pyenv
#set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
#pyenv rehash

# x86 homebrew
alias xbrew='arch -x86_64 /usr/local/bin/brew'
funcsave xbrew

# this is an interesting package, if you mess up a command you can type "fuck" in terminal and it guesses at what you meant
thefuck --alias | source

function fcode
	~/sync/scripts/./fcode.sh
end
funcsave fcode

# creates a tmux session named as the current directory and containing two windows
function tmx
  set name (basename $PWD)
  tmux new-session -d -s $name
  tmux new-window -d
  tmux attach-session -d -t $name
end
funcsave tmx

# you can find this script in my repository "cmake-utils"
alias build-cmake='~/projects/cmake-utils/build_cmake.sh'
funcsave build-cmake

# you can find this script in my repository "cmake-utils"
function run-cmake
  set runfile (~/projects/cmake-utils/run_cmake.sh)
  $runfile $argv[1..-1]
end
funcsave run-cmake

# vscode insiders runs on M1 but i want to use it the same way as the traditional one
alias code='code-insiders'
funcsave code

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

# this is the way i always run this package, so i created an alias
alias mac_info='osx-cpu-temp -c -g -f -F'
funcsave mac_info

# gets rid of the fish greeting
set fish_greeting

# for iterm
test -e /Users/connorfrank/.iterm2_shell_integration.fish ; and source /Users/connorfrank/.iterm2_shell_integration.fish ; or true
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/qt/bin" $fish_user_paths
