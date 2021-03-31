# Defined in - @ line 1
function ks --wraps='ssh pi@kuehlschrank' --description 'alias ks=ssh pi@kuehlschrank'
  ssh pi@kuehlschrank $argv;
end
