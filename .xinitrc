#!/bin/bash

if [[ -d $HOME/.xinitrc.d ]]; then
  for i in $HOME/.xinitrc.d/*; do
    if [[ -x "$i" ]]; then
      echo $i
      . "$i"
    fi
  done
fi

exec awesome

# feh --bg-fill .awesomebg
# if [[ -n $(command -v xmodmap) ]] && [[ -s ~/.Xmodmap ]]; then
#   xmodmap ~/.Xmodmap
# fi
#
# exec xmonad
