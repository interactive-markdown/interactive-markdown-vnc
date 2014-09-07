FROM interactivemarkdown/base

# Install JDK stuff
RUN apt-get install -y openjdk-7-jdk
#RUN apt-get install -y ia32-libs
RUN mkdir /usr/local/android-sdks
RUN ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1.2.0 /usr/lib/libGL.so

# Install Android SDK
ADD ./android-sdk /usr/local/im-vnc/env/android/
RUN echo "y" | /usr/local/im-vnc/env/android/android-sdk/tools/android update sdk --no-ui --force --filter platform-tools,android-20,build-tools-20.0.0,extra-android-support
RUN echo "y" | /usr/local/im-vnc/env/android/android-sdk/tools/android update sdk -u -a -t system-image

RUN /usr/local/im-vnc/env/android/tools/android list targets

RUN /usr/local/im-vnc/env/android/tools/android create avd -n emu_default -t 1 --abi default/armeabi-v7a

CMD ["/usr/local/im-vnc/env/android/run_android.sh", "--url", "https://github.com/rails/rails"]