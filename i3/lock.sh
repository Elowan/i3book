#!/bin/bash
# lock.sh script for use with i3
#
#++++++++++++++++++++++++++++++++
#++++ by ELOWAN in 2016-01-08 +++
#++++++++++++++++++++++++++++++++
#
# If i3lock is called, a screenshot via scrot is taken and modified with imagemagic-fx
# and of course, guess what - the screen gets locked!

# Take a Screenshot
scrot /tmp/screen_locked.png

# Apply pixelation-fx to screenshot
convert /tmp/screen_locked.png -sigmoidal-contrast 2x1 -scale 10% -scale 1000% /tmp/screen_locked.png

# Another methode that will deliver a smooth bur-fx but more taxing on CPU
#convert /tmp/screen_locked.png -sigmoidal-contrast 2x1 -blur 4x2 /tmp/screen_locked.png

# Lock screen and display image
i3lock -i /tmp/screen_locked.png

# Delete screenshot-image
rm /tmp/screen_locked.png
