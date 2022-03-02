sudo apt-get install xserver-xorg-video-dummy
sudo apt-get install xvfb


Xvfb :2 -screen 0 1920x1080x24
ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -draw_mouse 0 -i :2.0 -maxrate 10M -bufsize 6M -c:a copy -preset fast output.mp4

ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -draw_mouse 0 -i :0.0 -maxrate 2M -bufsize 6M -vcodec libx264 -f flv rtmps://a.rtmps.youtube.com/live2/0tmu-9v1v-jbyp-12jc-1wy8

DISPLAY=:2 INFOBEAMER_FULLSCREEN=1 info-beamer content/package-31c3-background-master/