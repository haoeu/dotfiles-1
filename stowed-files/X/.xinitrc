#!/bin/bash

sourceIfExists /etc/X11/xinit/xinitrc

# Caps lock sucks
setxkbmap -layout us -option "ctrl:nocaps,altwin:left_meta_win" && \
  # Reasonable key repeat. First number is ms delay, second is repetitions per s
  xset r rate 250 45 && \
  # Begin!
  exec i3
