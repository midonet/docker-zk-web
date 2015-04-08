FROM ubuntu:latest
MAINTAINER Tim Fall <tim@midokura.com>

# Containerized version of zk-web (https://github.com/qiuxiafei/zk-web)

RUN apt-get update && apt-get install -y wget fish git
ADD https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein /bin/lein
RUN chmod 755 /bin/lein

ENV LEIN_ROOT=yes

RUN git clone https://github.com/qiuxiafei/zk-web.git

WORKDIR /zk-web

EXPOSE 8080

ENTRYPOINT lein run
