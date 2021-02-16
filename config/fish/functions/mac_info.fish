# Defined in - @ line 1
function mac_info --wraps='osx-cpu-temp -c -g -f -F' --description 'alias mac_info=osx-cpu-temp -c -g -f -F'
  osx-cpu-temp -c -g -f -F $argv;
end
