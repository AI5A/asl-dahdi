FROM debian:bullseye

RUN apt-get update && \
  apt-get install -y dahdi-source libnewt-dev libusb-1.0.0-dev \
  asciidoc-base groff dkms build-essential devscripts fakeroot \
  debhelper automake autotools-dev pkg-config ca-certificates cpio

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

VOLUME /asl-dahdi
WORKDIR /asl-dahdi

ENTRYPOINT ["/entrypoint.sh"]
