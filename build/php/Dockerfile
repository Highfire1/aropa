FROM php:8.1-apache

RUN apt-get update \
  && apt-get install -y libxslt-dev libzip-dev \
  && docker-php-ext-install mysqli xsl zip
