if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
end

systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
