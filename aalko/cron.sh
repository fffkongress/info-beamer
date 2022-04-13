#!/bin/bash
cd /home/server/info-beamer/aalko/analogclock
python3.10 clock.py
cd ../switcher/help
python3.10 dlshifts.py
cd ../prog
python3.10 dlprog.py
cd ../twitter
python3.10 update-tweets.py
