#!/bin/bash

echo "#-----------------------------------------------------------------------#"
echo "Install pretty bash prompt"
echo "#-----------------------------------------------------------------------#"
cd
#curl -o .bash_prompt https://gist.githubusercontent.com/mimiflynn/9144157/raw/53ba4e96b9b1e344f676dccf7d07a3f6f74cc117/.bash_prompt
#curl -o .bash_profile https://gist.githubusercontent.com/mimiflynn/9144157/raw/b48cf53c35984114c94f1c9c6fa4887e82b46582/.bash_profile
#source .bash_profile
echo "#-----------------------------------------------------------------------#"
echo "Update apt-get"
echo "#-----------------------------------------------------------------------#"
#curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
#sudo apt-get update
echo "#-----------------------------------------------------------------------#"
echo "Install LEMP Stack"
echo "#-----------------------------------------------------------------------#"
sudo apt-get install -y install nginx
echo "#-----------------------------------------------------------------------#"
echo "Install and Configure MySQL"
echo "#-----------------------------------------------------------------------#"
sudo apt-get install -y mysql-server
sudo mysql_install_db
sudo mysql_secure_installation
echo "#-----------------------------------------------------------------------#"
echo "Install NodeJS"
echo "#-----------------------------------------------------------------------#"
#sudo apt-get install -y nodejs
echo "#-----------------------------------------------------------------------#"
echo "Cleanup apt-get"
echo "#-----------------------------------------------------------------------#"
sudo apt-get autoremove
