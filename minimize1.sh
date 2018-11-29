#!/bin/bash

# this script is to convert automatically a folder of video files to mp4
# You need to change SRC -- Sourse folder and DEST -- Destination folder
# The mp4 format is 480x270

SRC=/home/ikti/share/Anim/[belum1]
DEST=/home/ikti/share/Anim/[sudah]
DEST_EXT=mkv
HANDBRAKE_CLI=HandBrakeCLI
#IFS=$(echo -en "\n\b")

frams="23.976"
#frams="23.810"
#frams="24"
#frams="29.92"

#aude="av_aac"
#aude="ac3"
aude="copy:ac3"

precode="-e x265 -q 26 -r $frams --aencoder $aude"
#precode="tes265.plist"

audf="--audio-fallback"
audfc="ac3"

#vidp="-Y 1080"
vidp="-Y 720"
#vidp="-Y 480"

audtr="-a"
trnum="3"

subs="--subtitle"
#subdef="--subtitle-default"
subnum="4"
#subdefn="1"

#natlang="--native-language"
#langfil="jap"

for FILE in `ls $SRC`
do
	if [[ "$FILE" == "kusus" ]] ; then
              continue;
	fi
	if [[ "$FILE" == "simpan" ]] ; then
		continue;
	fi
filename=$(basename $FILE)
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i $SRC/$FILE -o $DEST/$filename.$DEST_EXT $precode $audtr $trnum $audf $audfc $vidp $subs $subnum;
mv -v "$DEST/$filename.$DEST_EXT" "$(echo $DEST/$filename.$DEST_EXT | sed 's/_/ /g')" ;
done
