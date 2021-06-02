FROM php:7.4.3-apache
RUN a2enmod rewrite \
&& a2ensite 000-default
RUN apt-get -y update \
&& apt-get install -y libicu-dev \
&& docker-php-ext-install intl \
&& docker-php-ext-install pdo \
&& pecl install xdebug

CMD apachectl -D FOREGROUND