FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends --no-install-suggests -y locales readline-common vim procps netcat && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    localedef -i en_US -c -f UTF-8 -A /etc/locale.alias en_US.UTF-8

COPY dist/ /

ENV LANG en_US.utf8

CMD ["/bin/bash"]
