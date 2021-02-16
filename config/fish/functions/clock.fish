# Defined in - @ line 1
function clock --wraps='tty-clock -s -c -f "%d.%m.%Y"' --description 'alias clock=tty-clock -s -c -f "%d.%m.%Y"'
  tty-clock -s -c -f "%d.%m.%Y" $argv;
end
