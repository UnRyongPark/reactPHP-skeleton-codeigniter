FROM ubuntu:18.04
MAINTAINER Brian Park <brian.park@specupad.com>

ARG SERVICE_STATE=dev
ENV SERVICE_STATE ${SERVICE_STATE}

RUN apt-get update;
RUN apt-get upgrade -y;

RUN apt-get install -y tzdata;
RUN ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime;
RUN dpkg-reconfigure -f noninteractive tzdata;

RUN apt-get install -y curl wget pkg-config nginx php7.2-cgi php7.2-common php7.2-dev php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-xml php7.2-xmlrpc php7.2-zip php-memcached php-imagick php-geoip imagemagick memcached;
RUN apt-get install -y dos2unix git;

RUN php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php \
	&& php composer-setup.php --install-dir=/usr/local/bin \
	&& php -r "unlink('composer-setup.php');";

#ADD conf/nginx.conf /etc/nginx/sites-available/default

#ADD init.sh /root/init.sh
#ADD start.sh /root/start.sh

#RUN dos2unix /root/start.sh /root/start.sh;
#RUN dos2unix /root/init.sh /root/init.sh;

WORKDIR /root

EXPOSE 80
EXPOSE 443