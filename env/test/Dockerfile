FROM interactivemarkdown/base
RUN apt-get install -y speedcrunch

ADD . /usr/local/im-vnc/test/
CMD ["/bin/bash", "/usr/local/im-vnc/test/test_proxy.sh"]