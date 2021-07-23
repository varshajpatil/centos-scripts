sudo yum install epel-release
sudo yum install phpmyadmin -y
sudo chgrp -R user /etc/phpMyAdmin
sudo chown -R user /etc/phpMyAdmin
sudo ln -sfn  /usr/share/phpMyAdmin /usr/share/nginx/html
sudo nginx -t && sudo systemctl reload nginx
sudo systemctl reload php72-php-fpm.service
cd /var/lib/
sudo chown -R user:user nginx/
sudo chown -R root:user session/
sudo systemctl reload php72-php-fpm.service
