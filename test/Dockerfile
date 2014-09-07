FROM interactivemarkdown/base
RUN apt-get install -y speedcrunch

ADD . /app/im-vnc/test/
CMD ["/bin/bash", "/app/im-vnc/test/test_proxy.sh"]
