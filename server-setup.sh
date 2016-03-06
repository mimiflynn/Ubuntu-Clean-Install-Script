#!/bin/bash

echo "#-----------------------------------------------------------------------#"
echo "Update apt-get"
echo "#-----------------------------------------------------------------------#"
sudo apt-get update
echo "#-----------------------------------------------------------------------#"
echo "Install LEMP Stack"
echo "#-----------------------------------------------------------------------#"
sudo apt-get install -y nginx
sudo apt-get install -y php5-fpm php5-mysql
echo "#-----------------------------------------------------------------------#"
echo "Install and Configure MySQL"
echo "#-----------------------------------------------------------------------#"
sudo apt-get install -y mysql-server
sudo mysql_install_db
sudo mysql_secure_installation
echo "#-----------------------------------------------------------------------#"
echo "Cleanup apt-get"
echo "#-----------------------------------------------------------------------#"
sudo apt-get autoremove
