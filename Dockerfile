FROM ubuntu:22.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install g++ -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
