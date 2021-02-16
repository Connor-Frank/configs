# Defined in /Users/connorfrank/.config/fish/config.fish @ line 35
function run-cmake
  set runfile (~/projects/cmake-utils/run_cmake.sh)
  $runfile $argv[1..-1]
end
