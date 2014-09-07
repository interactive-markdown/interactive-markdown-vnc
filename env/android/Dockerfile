FROM interactivemarkdown/base

RUN apt-get -y update
RUN apt-get install -y build-essential git openjdk-7-jdk lib32z1 \
  lib32ncurses5 lib32bz2-1.0 g++-multilib wget

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

WORKDIR /android
RUN wget http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz --quiet
RUN tar xzf android-sdk_r23.0.2-linux.tgz && \
  mv android-sdk-linux /usr/local/ && \
  ln -s /usr/local/android-sdk_r23.0.2-linux /usr/local/android-sdk-linux

ENV ANDROID_SDK_HOME /usr/local/android-sdk-linux
ENV PATH $PATH:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools

RUN echo "y" | android update sdk --no-ui --force --filter platform-tools,android-19,build-tools-19.0.1,system-image,extra-android-support
RUN echo "y" | android update sdk -u -a -t system-image

RUN echo no | android create avd --force -n test -t android-19 -b default/armeabi-v7a

RUN apt-get -y install ia32-libs libgl1-mesa-dev
RUN ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1.2 /usr/lib/libGL.so

ADD boot.sh /bin/boot.sh

CMD ["/bin/boot.sh"]
