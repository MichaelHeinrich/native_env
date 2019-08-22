FROM ubuntu:latest

MAINTAINER Michael Heinrich <michael.heinrich@anavs.de>

# Install packages
RUN apt-get update && apt-get -y install make git rsync cmake ia32-libs
RUN export PATH=$PATH:$HOME/raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin
RUN mkdir raspberrypi && cd raspberrypi && mkdir rootfs
RUN git clone git://github.com/raspberrypi/tools.git
RUN arm-linux-gnueabihf-gcc -v

