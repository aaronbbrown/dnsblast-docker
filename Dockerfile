FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y \
      git \
      build-essential
RUN git clone https://github.com/jedisct1/dnsblast
RUN cd dnsblast && \
    make

ENTRYPOINT dnsblast/dnsblast
