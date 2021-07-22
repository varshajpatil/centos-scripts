#!/bin/bash
sudo yum -y install epel-release
sudo yum-config-manager --enable remi-php72
sudo yum install php
php -v
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum install yum-utils
sudo yum-config-manager --enable remi-php72
sudo yum install php72
sudo yum install php72-php-fpm php72-php-gd php72-php-json php72-php-mbstring php72-php-mysqlnd php72-php-xml php72-php-xmlrpc php72-php-opcache
sudo systemctl enable php72-php-fpm.service
sudo systemctl status php72-php-fpm.service
sudo systemctl start php72-php-fpm.service
sudo systemctl status php72-php-fpm.service
