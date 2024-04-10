FROM ubuntu:latest

WORKDIR /workdir

COPY build/cdt_*.deb /workdir

RUN apt-get update && apt-get install -y wget cmake build-essential g++ libboost-all-dev libz3-dev && \
    apt install ./cdt_*.deb -y && \
    rm cdt_*.deb
