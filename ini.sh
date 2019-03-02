#!/bin/bash

DIR=/home/ikti/share/Anim/[belum1]

ls $DIR | while read -r FILE
do
	if [[ "$FILE" == "kusus" ]] || [[ "$FILE" == "simpan" ]] ; then
		continue;
	fi
    mv -v "$DIR/$FILE" `echo $DIR"/"$FILE | tr ' ' '_' `
done
