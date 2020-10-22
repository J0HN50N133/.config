#! /bin/bash

# 获取歌名
selected_song=$(fuo list | awk '{$1="";tmp=$2;$2="";$3="";$(NF+1)=tmp;print $0;}' | rofi -dmenu -width 75 -selected-row 1 -font "ubuntumono 15"|awk '{print $NF}')
fuo play $selected_song
