# Defined via `source`
function syadm --wraps='sudo yadm -Y /etc/yadm' --description 'alias syadm=sudo yadm -Y /etc/yadm'
  sudo yadm -Y /etc/yadm $argv; 
end
