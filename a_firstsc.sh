#!/bin/bash
sudo useradd pulse
sudo passwd pulse
sudo usermod pulse -aG wheel
sudo yum install nano -y
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/p' /etc/ssh/sshd_config
sudo systemctl restart sshd

#### Info : logout centos user and login as pulse user and run all remainign scripts
