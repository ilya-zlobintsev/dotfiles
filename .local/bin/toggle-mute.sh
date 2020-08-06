amixer set Capture toggle
MUTE_STATUS="$(amixer get Capture | grep '\[off\]')"
if [ -n "$MUTE_STATUS" ]; then
    notify-send.sh -t 1000 "MIC muted" --replace-file=/tmp/mutenotif 
    play ~/Documents/Mutesound.mp3
else
    notify-send.sh -t 1000 "MIC unmuted" --replace-file=/tmp/mutenotif 
    play ~/Documents/Unmutesound.mp3
fi
