#!/bin/bash
STREAMKEY="0tmu-9v1v-jbyp-12jc-1wy8"

# apt update
# apt install liblua5.1-dev libevent-dev libglfw3-dev libglew1.5-dev libftgl-dev libavcodec-dev libswscale-dev libavformat-dev libdevil-dev libxinerama-dev libxcursor-dev libxrandr-dev libxi-dev lua5.1 libxxf86vm-dev xvfb ffmpeg make
# install python3.10 python3-pip python-twitter

# install cron.sh
# install service

# install infobeamer
# make install

# activate services
Xvfb :2 -screen 0 1920x1080x24 &
DISPLAY=:2 INFOBEAMER_FULLSCREEN=1 info-beamer aalko &
ffmpeg -f lavfi -i anullsrc -f x11grab -draw_mouse 0 -i :2.0 -maxrate 5M -framerate 30 -bufsize 6M -q:v 1 -c:v libx264 -c:a aac -ab 44.1k -crf 25 -pix_fmt yuv420p -f flv rtmps://a.rtmps.youtube.com/live2/$STREAMKEY


# start




