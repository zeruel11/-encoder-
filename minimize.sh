#!/bin/bash

# this script is to convert automatically a folder of video files to mp4
# You need to change SRC -- Sourse folder and DEST -- Destination folder
# The mp4 format is 480x270

SRC=/home/ikti/share/Anim/[belum]
DEST=/home/ikti/share/Anim/[sudah]
DEST_EXT=mkv
HANDBRAKE_CLI=HandBrakeCLI
#IFS=$(echo -en "\n\b")

frams="23.976"
#frams="24"
#frams="29.92"

#aude="av_aac"
aude="ac3"

precode="-e x265 -q 26 -r $frams --aencoder $aude -B 128"
#precode="tes265.plist"

vidp="-Y 720"
#vidp="-Y 480"

audtr="-a"
trnum="1"

subs="--subtitle"
subnum="1"

#natlang="--native-language"
#langfil="jap"

for FILE in `ls $SRC`
do
filename=$(basename $FILE)
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i $SRC/$FILE -o $DEST/$filename.$DEST_EXT $precode $audtr "$trnum" $vidp $subs "$subnum" $natlang "$langfil"
done
