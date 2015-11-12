FROM brimstone/ubuntu:14.04

RUN package autoconf build-essential libtool pkg-config \
	libssl-dev

COPY notbit /opt/notbit

COPY builder /

RUN /builder \
 && cp /opt/notbit/src/notbit /
