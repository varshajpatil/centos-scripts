sudo yum install epel-release -y
sudo yum update -y
sudo yum install vim -y



sudo yum install git -y
sudo yum install htop -y
sudo yum install epel-release -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

sudo yum -y install iptables-services
sudo systemctl start iptables
sudo systemctl enable iptables

sudo iptables -P INPUT ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -F
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT
sudo service iptables save
sudo systemctl restart iptables


