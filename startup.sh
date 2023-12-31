#!/bin/bash

# start X11 + Window Manager + VNC server

export DISPLAY=:99
Xvfb ${DISPLAY} -ac -listen tcp -screen 0 1024x768x16 &
sleep 3
jwm -display ${DISPLAY} &
sleep 3
x11vnc -display ${DISPLAY}.0 -forever -shared -nopw &
sleep 3

echo "user:x:${UID}:${GID}:user:/tmp:/bin/bash" >> /etc/passwd

# run program

sudo -u user bash -c '/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser'

