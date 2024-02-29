FROM ubuntu:22.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
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
