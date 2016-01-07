#!/bin/bash
#Take Screenshot
scrot /tmp/screen_locked.png


#convert /tmp/screen_locked.png -sigmoidal-contrast 2x1 -blur 4x2 /tmp/screen_locked.png

convert /tmp/screen_locked.png -sigmoidal-contrast 2x1 -scale 10% -scale 1000% /tmp/screen_locked.png

#Lock screen and display image
i3lock -i /tmp/screen_locked.png
rm /tmp/screen_locked.png
