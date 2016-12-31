FROM debian:sid
MAINTAINER n3integration <n3integration@gmail.com>

ARG revision=0.2.12

EXPOSE 5555
EXPOSE 5556

VOLUME /etc/riemann

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y curl bzip2 openjdk-8-jre-headless \
    && DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y $BUILD_PACKAGES \
    && rm -rf /var/lib/apt/lists/*

RUN cd /usr/local \
    && curl -sLO https://github.com/riemann/riemann/releases/download/$revision/riemann-$revision.tar.bz2 \
    && curl -sLO  https://github.com/riemann/riemann/releases/download/$revision/riemann-$revision.tar.bz2.md5 \
    && md5sum -c riemann-$revision.tar.bz2.md5 \
    && tar xfj riemann-$revision.tar.bz2 \
    && cd riemann-$revision \
    && sed -i 's/127.0.0.1/0.0.0.0/' etc/riemann.config

RUN DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y curl bzip2

WORKDIR /usr/local/riemann-$revision

ENTRYPOINT ["./bin/riemann"]

