#!/bin/sh
#install Apache Web Server on Ubuntu 16 LTS
#update repositories on server
sudo apt-get -y update
#install apache webserver
sudo apt-get -y install apache2
#restart the webserver
sudo systemctl start apache2.service