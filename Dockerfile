FROM docker.hspu.local:5000/nginx-php
MAINTAINER Dmitrii Zolotov <dzolotov@herzen.spb.ru>

ADD mywebsql.tar.gz /var/www/html/

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get install -y mariadb-client && apt-get clean && rm -rf /var/lib/apt/lists/*

