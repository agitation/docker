FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends --no-install-suggests -y locales readline-common vim procps netcat apt-transport-https lsb-release ca-certificates supervisor && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    localedef -i en_US -c -f UTF-8 -A /etc/locale.alias en_US.UTF-8 && \
    useradd -m -s /bin/bash -u 1000 app

COPY dist/ /

ENV LANG en_US.utf8

CMD ["/bin/bash"]
