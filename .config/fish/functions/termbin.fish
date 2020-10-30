# Defined in - @ line 1
function termbin --wraps='nc termbin.com 9999' --description 'alias termbin nc termbin.com 9999'
  nc termbin.com 9999 $argv;
end
