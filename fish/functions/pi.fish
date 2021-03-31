# Defined in - @ line 1
function pi --wraps='ssh pi@nek-pi' --wraps='ssh pi@janek-pi' --description 'alias pi=ssh pi@janek-pi'
  ssh pi@janek-pi $argv;
end
