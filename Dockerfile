FROM javister-docker-docker.bintray.io/javister/javister-docker-base:1.0
MAINTAINER Viktor Verbitsky <vektory79@gmail.com>

ENV RPMLIST="$RPMLIST certbot" \
    LETSENCRYPT_EMAIL=""

COPY files /

RUN . /usr/local/bin/yum-proxy && \
    yum-install && \
    yum-clean && \
    chmod --recursive +x /etc/my_init.d/*.sh /etc/service /usr/local/bin
