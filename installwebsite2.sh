ggit#!/bin/sh -e
#install Apache Web Server on Ubuntu 16 LTS
#update repositories on server
sudo apt-get -y update
#install git
sudo apt-get -y install git-core
#install apache webserver
sudo apt-get -y install apache2
#set permissions on the html folder so files can be copied
sudo chmod 777 var/www/html/
#download website files from git repository
sudo git clone https://github.com/servicenowcmf/website2
#copy the downloaded content to the Apache www directory
mv /website2/*.* /var/www/html
mv /website2/css /var/www/html
mv /website2/img /var/www/html
#restart the webserver",
sudo systemctl start apache2.service