#!/bin/bash
sudo dd if=/dev/zero of=/mnt/swapfile count=4096 bs=1MiB
ls -lah /mnt/swapfile
sudo chmod 600 /mnt/swapfile
sudo mkswap /mnt/swapfile
sudo swapon /mnt/swapfile
swapon -s
sudo echo "/mnt/swapfile swap swap sw 0 0" |sudo tee -a /etc/fstab
sudo swapon --show

sudo sysctl vm.swappiness=10
sudo echo "vm.swappiness = 10" |sudo tee -a /etc/sysctl.conf

sudo sysctl vm.vfs_cache_pressure=50
sudo echo "vm.vfs_cache_pressure = 50" |sudo tee -a /etc/sysctl.conf


#### Refer here ##### https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-centos-7



####For remove swap
##sudo swapoff -a
##Remove from /etc/fstab
##cd /mnt
##sudo rm -f swapfile
