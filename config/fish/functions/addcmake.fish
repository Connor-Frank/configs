# Defined in - @ line 1
function addcmake --wraps='python ~/projects/cmake-utils/add_library_cmake.py' --description 'alias addcmake=python ~/projects/cmake-utils/add_library_cmake.py'
  python ~/projects/cmake-utils/add_library_cmake.py $argv;
end
