# Defined in - @ line 1
function tmpdir --wraps='cd (mktemp -d)' --wraps='pushd (mktemp -d)' --description 'alias tmpdir cd (mktemp -d)'
  cd (mktemp -d) $argv;
end
