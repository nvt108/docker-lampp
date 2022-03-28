FROM ubuntu:20.04
MAINTAINER TrungNV <dev.trung@gmail.com>
RUN apt-get update
RUN apt-get upgrade -y && apt-get -y install sudo
ENV DEBIAN_FRONTEND=nonintercative
ENV DATE_TIMEZONE=Etc/UTC
RUN apt-get install -y \
	php7.4 \
	php7.4-soap \
	php7.4-cgi \
	php7.4-cli \
	php7.4-common \
	php7.4-curl \
	php7.4-dev \
	php7.4-fpm \
	php7.4-gd \
	php7.4-imap \
	php7.4-intl \
	php7.4-json \
	php7.4-ldap \
	php7.4-mbstring \
	php7.4-mysql \
	php7.4-odbc \
	php7.4-pgsql \
	php7.4-phpdbg \
	php7.4-pspell \
	php7.4-zip
RUN apt-get install apache2 libapache2-mod-php7.4 -y
RUN apt-get install postfix -y
RUN apt-get install git nodejs npm composer nano vim curl -y
RUN npm install -g bower grunt-cli gulp

COPY ./start.sh /usr/sbin/start.sh
COPY ./config/apache2.conf /etc/apache2/apache2.conf
COPY ./config/php.ini /etc/php/7.4/apache2/php.ini
COPY ./config/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

RUN chmod +x /usr/sbin/start.sh
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["bash","/usr/sbin/start.sh"]