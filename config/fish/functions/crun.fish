# Defined in /Users/connorfrank/.config/fish/config.fish @ line 31
function crun
  set runfile (~/projects/cmake-utils/run_cmake.sh)
  $runfile $argv
end
