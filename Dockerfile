FROM kalilinux/kali-rolling

LABEL maintainer="wsbky"

RUN apt-get -y update && apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    kali-linux-headless \
    pciutils \
    iputils-ping net-tools \
    && apt-get -y autoremove \
    && apt-get clean

CMD ["/usr/bin/zsh"]
