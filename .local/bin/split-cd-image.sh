#!/bin/bash
echo `pwd`

CDFILE="$(ls *.flac)"
CDFILE="$(ls *.ape):$CDFILE"
CUEFILE="$(ls *.cue)"

cuebreakpoints "$CUEFILE" | shnsplit -o flac "$CDFILE"
cuetag.sh "$CUEFILE" split*

#rm "$CDFILE"
#rm "$CUEFILE"
