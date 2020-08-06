export PATH=~/.local/bin/:$PATH
export RADV_PERFTEST=aco
export MANGOHUD=1

export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
systemctl --user import-environment
