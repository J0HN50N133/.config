#! /bin/bash

## This is script is used to search song and play song in fuo
if test -z $1
then
#  get the song_name from rofi
PS="请输入歌名/歌手/专辑"
song_name=$(rofi -p "$PS" -dmenu -lines 0 -bw 0 -font "ubuntumono 24" -selected-row 1|awk '{gsub(" ","_",$0);print;}')
        if test -z $song_name
        then
                exit 0
        fi
selected_song=$(fuo search $song_name | rofi -dmenu -width 75 -selected-row 1 -font "ubuntumono 15" |awk '{print $2}')
else
        selected_song=$1
fi


if test -z $selected_song
then
        exit 0
fi

fuo play $selected_song
