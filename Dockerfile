FROM ubuntu:22.04
LABEL net.mlcollard.email="collard@uakron.edu"
LABEL net.mlcollard.url="https://mlcollard.net"

ENV TZ=US/Michigan

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        ccache \
        g++ \
        git \
        make \
        ninja-build \
        curl \
        tree \
        dpkg-dev \
        valgrind \
        zip \
        file \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Put ccache into the path
ENV PATH /usr/lib/ccache:$PATH
RUN export PATH=/usr/lib/ccache/:$PATH
