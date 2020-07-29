#!/bin/bash
echo `pwd`

FLACFILE="$(ls *.flac)"
CUEFILE="$(ls *.cue)"

cuebreakpoints "$CUEFILE" | shnsplit -o flac "$FLACFILE"
cuetag.sh "$CUEFILE" split*

#rm "$FLACFILE"
#rm "$CUEFILE"
