FROM interactivemarkdown/base

RUN apt-get -y install firefox
ENV DISPLAY :0
RUN firefox

RUN /usr/local/im-vnc/docker/post_build.sh