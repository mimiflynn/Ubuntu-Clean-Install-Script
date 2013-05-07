echo "#-----------------------------------------------------------------------#"
echo "update aptitude"
echo "#-----------------------------------------------------------------------#"
sudo apt-get update
echo "#-----------------------------------------------------------------------#"
echo "Install nodejs"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install nodejs
echo "#-----------------------------------------------------------------------#"
echo "Install SQLite3"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install sqlite3
echo "#-----------------------------------------------------------------------#"
echo "NodeJS application frameworks"
echo "#-----------------------------------------------------------------------#"
sudo npm install -g compound
sudo npm install -g tower
sudo npm install -g flatiron
sudo npm install -g wintersmith
echo "#-----------------------------------------------------------------------#"
echo "NodeJS tools"
echo "#-----------------------------------------------------------------------#"
sudo npm install -g markdown
sudo npm install -g jugglingdb
sudo npm install -g coffee-script
sudo npm install -g mocha
sudo npm install -g grunt
sudo npm install -g js2coffee
echo "#-----------------------------------------------------------------------#"
echo "WIN!"
echo "#-----------------------------------------------------------------------#"
