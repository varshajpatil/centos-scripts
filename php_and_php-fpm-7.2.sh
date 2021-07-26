#!/bin/bash
sudo yum -y install epel-release
sudo yum-config-manager --enable remi-php72 
sudo yum install php -y
php -v
sudo yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm  
sudo yum install yum-utils -y
sudo yum-config-manager --enable remi-php72
sudo yum install php72 -y
sudo yum -y install php72-php-fpm php72-php-gd php72-php-json php72-php-mbstring php72-php-mysqlnd php72-php-xml php72-php-xmlrpc php72-php-opcache
sudo systemctl enable php72-php-fpm.service
sudo systemctl status php72-php-fpm.service
sudo systemctl start php72-php-fpm.service
sudo systemctl status php72-php-fpm.service
sudo sed -i 's/user = apache/user = nginx/p' /etc/opt/remi/php72/php-fpm.d/www.conf
sudo sed -i 's/group = apache/group = nginx/p' /etc/opt/remi/php72/php-fpm.d/www.conf
sudo systemctl reload php72-php-fpm.service
sudo systemctl status php72-php-fpm.service
