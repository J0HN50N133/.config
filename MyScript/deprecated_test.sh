#! /bin/bash

# Variable passed to rofi
stacked=""
tabbed="ﬓ"
split="﬿"

options="$stacked\n$tabbed\n$split"

chosen="$(echo -e "$options" | rofi -dmenu -selected-row 1)"
case $chosen in
    $stacked)
        i3-msg layout stacked
        ;;
    $tabbed)
        i3-msg layout tabbed
        ;;
    $split)
        i3-msg layout toggle split
        ;;
esac

