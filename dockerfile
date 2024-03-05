FROM hhvm/hhvm-proxygen:latest as base

ARG WORKDIR=/var/www/public
ENV DOCUMENT_ROOT=${WORKDIR}

EXPOSE 80
EXPOSE 443

RUN apt-get update && apt-get install -y \
  - git \
  - curl \
  - openssh-server \
  - zip \
  - unzip \
  - sqlite3 \
  - nano \
  - cron

run curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR $WORKDIR