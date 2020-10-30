# Defined in - @ line 1
function grep --wraps='grep -RIn' --wraps='grep -RIn --color=always' --description 'alias grep grep -RIn --color=always'
 command grep -RIn --color=always $argv;
end
