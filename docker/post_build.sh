#!/bin/bash

#run the VNC server on xvfb window
x11vnc -display :0 -bg -nopw
#run the VNC proxy
#/usr/local/im-vnc/proxy/launch.sh --vnc 127.0.0.1:5900 &