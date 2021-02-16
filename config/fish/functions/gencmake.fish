# Defined in - @ line 1
function gencmake --wraps='python ~/projects/cmake-utils/gen_cmake.py' --description 'alias gencmake=python ~/projects/cmake-utils/gen_cmake.py'
  python ~/projects/cmake-utils/gen_cmake.py $argv;
end
