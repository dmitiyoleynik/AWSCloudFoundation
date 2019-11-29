#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
echo "$ip4" > /var/www/html/index.html
sudo service nginx restart
