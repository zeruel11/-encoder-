#!/bin/bash

# this script is to convert automatically a folder of video files to mp4
# You need to change SRC -- Sourse folder and DEST -- Destination folder
# The mp4 format is 480x270

SRC=/home/ikti/share/Anim/[kusus]
DEST=/home/ikti/share/Anim/[sudah]/repure
DEST_EXT=mkv
HANDBRAKE_CLI=ffmpeg
IFS=$(echo -en "\n\b")

precode="slow"
#precode="normal"
#precode="tes265.plist"

venc="libx264"
#venc="x264"

vpar="-x265-params"

#aenc="aac -strict experimental -b:a 128k"
#aenc="libmp3lame -b:a 128k"
aenc="copy"

comp="24"
#comp="26"
#comp="28"

#scala="scale=-1:480"
scala="scale=-1:720"
#scala="scale=-1:1080"



for FILE in `ls $SRC`
do
filename=$(basename $FILE)
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i $SRC/$FILE -c:v $venc -preset $precode $vpar crf=$comp -vf $scala -c:a $aenc $DEST/$filename.$DEST_EXT
done
