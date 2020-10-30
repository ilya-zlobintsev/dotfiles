# Defined in /tmp/fish.aFu27C/fish_user_key_bindings.fish @ line 2
function fish_user_key_bindings
    bind --preset \ck up-or-search
    bind --preset \cj down-or-search

    bind --preset \el "nextd-or-forward-word; commandline -f repaint"
    bind --preset \eh "prevd-or-backward-word; commandline -f repaint"
end
