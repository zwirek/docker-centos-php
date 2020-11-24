FROM zwirek/php:php-74-latest

RUN dnf install php-pecl-xdebug vim -y
RUN dnf clean all

COPY xdebug.ini /etc/php.d/15-xdebug.ini

CMD ["tail", "-f", "/dev/null"]
