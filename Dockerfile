FROM ubuntu:12.04

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Install vnc, xvfb 
RUN apt-get install -y x11vnc xvfb curl
RUN mkdir /.vnc

#run xvfb on window handler 0
RUN Xvfb :0 &

#install the proxy
ADD . /usr/local/im-vnc
WORKDIR /usr/local/im-vnc

#5900 - VNC Server, 6080 - Websocket VNC Proxy