#! /bin/bash

BGPATH=/home/ljx/图片/wallpaper/
SLEEPTIME=20m

while true; do
  feh --randomize --recursive --bg-fill $BGPATH
  sleep $SLEEPTIME
done
