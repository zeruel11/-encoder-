#!/bin/bash

# this script is to convert automatically a folder of video files to mp4
# You need to change SRC -- Sourse folder and DEST -- Destination folder
# The mp4 format is 480x270

SRC=/home/ikti/share/Anim/[belum1]/kusus
DEST=/home/ikti/share/Anim/[sudah]/repure
DEST_EXT=mkv
HANDBRAKE_CLI=ffmpeg
IFS=$(echo -en "\n\b")

precode="slow"
#precode="normal"
#precode="tes265.plist"

venc="libx265"
#venc="libx264"
#venc="x264"

#ratio="-aspect"
#rat="4:3"
#rat="16:9"

#aenc="ac3"
#aenc="aac"
#aenc="libmp3lame"
aenc="copy"

audpar="-b:a"
audbit="160k"

comp="24"
#comp="26"
#comp="28"

#scala="scale=-1:540"
#scala="scale=-1:480"
scala="scale=-1:720"
#scala="scale=-1:1080"

vidtr="-codec:v"
audtr="-codec:a"
mapvi="0:v:0"
mapau="0:a:1"
mapsb="0:s:0?"
mapat="0:t?"
choose="-map"

for FILE in `ls $SRC`
do
filename=$(basename $FILE)
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i $SRC/$FILE $vidtr $venc -preset $precode -x265-params crf=$comp -vf $scala $audtr $aenc $choose $mapvi $choose $mapau $choose $mapsb $choose $mapat $DEST/$filename.$DEST_EXT
done
