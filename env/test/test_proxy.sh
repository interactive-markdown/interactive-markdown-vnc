/bin/bash /usr/local/im-vnc/docker/pre_build.sh
DISPLAY=:0.0 speedcrunch &
/bin/bash /usr/local/im-vnc/docker/post_build.sh
while true; do sleep 2; done