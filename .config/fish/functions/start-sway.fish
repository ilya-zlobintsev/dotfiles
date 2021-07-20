function start-sway
  set -x XDG_CURRENT_DEKSTOP sway
  set -x XDG_SESSION_TYPE wayland
  set -x QT_QPA_PLATFORM wayland
  set -x MOZ_ENABLE_WAYLAND 1

  exec systemd-cat --identifier=sway sway
end
