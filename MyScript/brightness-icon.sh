#!/bin/sh

# This script displays an appropriate brightness icon according to the brightness level by `xbacklight` command

# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/t2ec
# License: GPL3

# Dependencies: `xbacklight`
# arguments: [up] | [down] | [<level>] 

if [[ $1 == up ]]; then
    exec xbacklight +5
elif [[ $1 == down ]]; then
    exec xbacklight -5
else
    if [[ $(($1)) == $1 ]] && [[ "$1" -ge 0 ]] && [[ "$1" -le 100 ]]; then
        exec xbacklight -set $1
    fi
fi

b=$(xbacklight -get)

bri=$(echo $b | awk '{ printf"%0.0f\n", $1 }')

echo "Bri: ${bri}%"
