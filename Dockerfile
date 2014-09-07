FROM ubuntu:14.04

# Install python
RUN apt-get -y update
RUN apt-get -y install python python-pip

# Install stuff for vnc
RUN apt-get install -y x11vnc xvfb curl net-tools
RUN mkdir /.vnc

ADD . /app/im-vnc

#5900 - VNC Server, 6080 - Websocket VNC Proxy
EXPOSE 5900

CMD ["/app/im-vnc/docker/pre_build.sh"]
