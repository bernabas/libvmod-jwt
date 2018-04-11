FROM ubuntu:16.04
MAINTAINER Bernabas Wolde dbernabas@gmail.com

# https://varnish-cache.org/docs/trunk/installation/install.html#build-dependencies-on-debian-ubuntu
RUN apt-get -qq update && apt-get -qq -y install apt-utils \
    automake \
    wget \
    autotools-dev \
    libedit-dev \
    libjemalloc-dev \
    libncurses-dev \
    libpcre3-dev \
    libtool \
    pkg-config \
    python-docutils \
    python-sphinx

RUN wget https://github.com/varnishcache/varnish-cache/archive/varnish-5.0.0.tar.gz && tar xvzf varnish-5.0.0.tar.gz
RUN cd varnish-cache-varnish-5.0.0 && sh autogen.sh && sh configure && make && make install

ENTRYPOINT ["/bin/bash /usr/local/sbin/varnishd -a 127.0.0.1:8025 -T 127.0.0.1:6082"]

EXPOSE 8025