# Defined in - @ line 1
function pi --wraps='ssh pi@nek-pi' --description 'alias pi ssh pi@nek-pi'
  ssh pi@nek-pi $argv;
end
