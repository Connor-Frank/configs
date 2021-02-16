# Defined in - @ line 1
function show --wraps='exa -al --icons' --description 'alias show=exa -al --icons'
  exa -al --icons $argv;
end
