FROM php:5.6-apache

# Switch to archive repositories for Debian Stretch
RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list \
    && sed -i 's/security.debian.org/archive.debian.org/g' /etc/apt/sources.list \
    && sed -i '/stretch-updates/d' /etc/apt/sources.list

# Add extra options for archive repository
RUN echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/10no-check-valid-until

RUN apt-get update \
  && apt-get install -y libxslt-dev libzip-dev \
  && docker-php-ext-install mysqli xsl zip
