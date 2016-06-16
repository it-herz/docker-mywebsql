FROM itherz/webapp-full:a7
MAINTAINER Dmitrii Zolotov <dzolotov@herzen.spb.ru>

ENV DEBIAN_FRONTEND noninteractive

ENV PHP_MODULES opcache mysqli mysqlnd pdo_mysql

ADD mywebsql.tar.gz /var/www/html/current
