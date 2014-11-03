FROM ubuntu:14.04

RUN apt-get update
RUN apt-get --yes install php5-cli curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin
RUN php /usr/local/bin/composer.phar create-project composer/satis --stability=dev --no-interaction --working-dir=/opt

WORKDIR /opt/satis

CMD ["php", "bin/satis"]
