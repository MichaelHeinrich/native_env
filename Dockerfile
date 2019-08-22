FROM ubuntu:latest

MAINTAINER Michael Heinrich <michael.heinrich@anavs.de>

# Install packages
RUN apt-get update && apt-get -y install make git cmake docker.io
