#!/usr/bin/bash
read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i" -b 1 -t 0 -q)
# Width and Height in px need to be converted to columns/rows
# To get these magic values, make a fullscreen st, and divide your screen width by ${tput cols}, height by ${tput lines} 
let "W = W / 7"
let "H = H / 16"
g=${W}x${H}+${X}+${Y}
echo $g #debugging
bspc rule -a URxvt -o state=floating
urxvt -g $g
