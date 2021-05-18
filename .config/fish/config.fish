if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
		set -x XDG_CURRENT_DESKTOP sway
		set -x XDG_SESSION_TYPE wayland
		set -x QT_STYLE_OVERRIDE adwaita-dark
		set -x QT_QPA_PLATFORM wayland 
		#systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
		systemctl --user import-environment
		dbus-update-activation-environment
        exec sway
    end
end

