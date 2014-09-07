/bin/bash /usr/local/im-vnc/docker/pre_build.sh

DISPLAY=:0.0 /usr/local/im-vnc/env/android/android-sdk/tools/emulator -avd emu_default &

/bin/bash /usr/local/im-vnc/docker/post_build.sh
while true; do sleep 1; done