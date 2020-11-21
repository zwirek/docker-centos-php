FROM centos:8

RUN dnf install epel-release -y
RUN dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
RUN dnf module reset php -y \
    && dnf module enable php:remi-7.4 -y \
    && dnf install php php-cli php-intl php-json php-mbstring php-mysqlnd php-pdo php-process php-xml php-pecl-rdkafka -y
RUN dnf clean all

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && rm composer-setup.php

CMD ["tail", "-f", "/dev/null"]