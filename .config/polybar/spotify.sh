#!/bin/bash

prepend_zero () {
    seq -f "%02g" $1 $1
}

artist=$(echo -n $(playerctl metadata artist))
song=$(echo -n $(playerctl metadata title))

echo -n "$artist - $song"
