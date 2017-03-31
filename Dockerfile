FROM debian:stretch
LABEL Description="This image is used to buld gnunet" Version="0.1"
RUN apt-get update && apt-get install -y build-essential debhelper dh-autoreconf libgcrypt20-dev libidn11-dev zlib1g-dev libunistring-dev
RUN mkdir -p /usr/src
COPY . /usr/src
CMD cd /usr/src/gnunet && dpkg-buildpackage --no-sign
