export PATH=~/.local/bin/:$PATH
#export RADV_PERFTEST=aco
export MANGOHUD=1

export XDG_DATA_HOME=~/.local/share
export XDG_CONFIG_HOME=~/.config

export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android

export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/jav

export GOPATH="$XDG_DATA_HOME"/go

#export GTK_USE_PORTAL=1

export WINEPREFIX=~/.local/share/wineprefixes/default

export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1

dbus-update-activation-environment --systemd --all
