# Defined in - @ line 1
function splay --wraps='curl localhost:3141/spotiplay' --description 'alias splay=curl localhost:3141/spotiplay'
  curl localhost:3141/spotiplay $argv;
end
