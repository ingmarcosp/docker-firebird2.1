FROM ubuntu
MAINTAINER Marcos P. <contacto@marcosp.it>

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y libc6:i386 libncurses5:i386 libstdc++5:i386 nano libncurses5-dev bzip2 curl gcc g++ make libstdc++6:i386

RUN mkdir -p /tmp/firebird
COPY setup.sh /tmp/firebird
RUN cd /tmp/firebird && sh setup.sh

ENV PATH $PATH:/opt/firebird/bin

VOLUME ["/sqlbase"]
EXPOSE 3050

WORKDIR /opt/firebird/bin
ENTRYPOINT ["fbguard", "-f", "-p", "/var/run/firebird/firebird.pid"]