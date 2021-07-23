sudo yum install epel-release
sudo yum install phpmyadmin -y
sudo chgrp -R nginx /etc/phpMyAdmin
sudo chown -R nginx /etc/phpMyAdmin
sudo ln -sfn  /usr/share/phpMyAdmin /usr/share/nginx/html
sudo nginx -t && sudo systemctl reload nginx
sudo systemctl reload php72-php-fpm.service
cd /var/lib/
sudo chown -R nginx:nginx nginx/
