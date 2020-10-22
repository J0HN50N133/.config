#!/bin/sh

# This script displays an appropriate brightness icon according to the brightness level by `light` command

# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/t2ec
# License: GPL3

# Dependencies: `light-git`
# arguments: [up] | [down] | [<level>]

if [[ $1 == up ]]; then
    light -A 1
elif [[ $1 == down ]]; then
    light -U 1
else
	if [[ $(($1)) == $1 ]] && [[ "$1" -ge 0 ]] && [[ "$1" -le 100 ]]; then # $(($1)) 可以判断是不是数字, 但是有一个bug, 如果$1代表的变量名恰好设置了值， 就无法判断了
        light -S $1
    fi
fi

b=$(light -G)

bri=$(echo $b | awk '{ printf"%0.0f\n", $1 }')

echo "Bri: ${bri}%"
