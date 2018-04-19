#!/bin/bash

xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Home"
xmodmap -e "clear shift"
xmodmap -e "add shift = Shift_L"
xmodmap -e "keysym Shift_R = End"
