echo "#-----------------------------------------------------------------------#"
echo "update aptitude"
echo "#-----------------------------------------------------------------------#"
sudo apt-get update
echo "#-----------------------------------------------------------------------#"
echo "Install Web Services"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install lamp-server^ php5-gd openssh-server vsftpd lynx nodejs
sudo a2enmod rewrite
sudo pecl install uploadprogress
sudo service apache2 restart
echo "#-----------------------------------------------------------------------#"
echo "Install Version Control"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install subversion git cvs
echo "#-----------------------------------------------------------------------#"
echo "Install Arduino Tools"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-ye install arduino*
echo "#-----------------------------------------------------------------------#"
echo "Install Other Applications"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install aptitude exuberant-ctags curl gparted synergy 
echo "#-----------------------------------------------------------------------#"
echo "Install Python3 and Django with Apache and MySQL modules and SQLite3"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install python3 libapache2-mod-python python-mysqldb python-django sqlite3 python-gtkmvc python-gtkmvc-doc bpython
echo "#-----------------------------------------------------------------------#"
echo "Install Ruby and Rails"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install ruby rubygems rails
sudo gem install mysql2
echo "#-----------------------------------------------------------------------#"
echo "Install Haskell with dependencies"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install libgmp3-dev freeglut3 freeglut3-dev
sudo apt-get -y --force-yes install ghc-ghci
echo "#-----------------------------------------------------------------------#"
echo "Install Utilities for Development"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install filezilla emma wireshark tshark chromium-browser compizconfig-settings-manager diffuse p7zip
sudo apt-get -y --force-yes install php-pear
sudo pear upgrade
sudo pear channel-discover pear.drush.org
sudo pear install drush/drush
sudo drush
echo "#-----------------------------------------------------------------------#"
echo "Install Encryption and Password Tools"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install encfs keepassx
echo "#-----------------------------------------------------------------------#"
echo "Utilities for Daily Life"
echo "#-----------------------------------------------------------------------#"
sudo add-apt-repository ppa:myunity/ppa
sudo add-apt-repository ppa:weather-indicator-team/ppa
sudo add-apt-repository ppa:indicator-multiload/stable-daily
sudo add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:skype-wrapper/ppa
sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo add-apt-repository ppa:neversfelde/ppa
sudo apt-get update
sudo apt-get -y install myunity indicator-weather indicator-multiload my-weather-indicator skype-wrapper ubuntu-restricted-extras y-ppa-manager minitube pidgin
echo "#-----------------------------------------------------------------------#"
echo "Mactel Support PPA"
echo "#-----------------------------------------------------------------------#"
sudo add-apt-repository ppa:mactel-support/ppa
sudo apt-get update
echo "#-----------------------------------------------------------------------#"
echo "configure vim"
echo "#-----------------------------------------------------------------------#"
sudo apt-get -y --force-yes install build-essential vim vim-gnome ruby ruby-dev
cd ~/
git clone git://github.com/mimiflynn/Ubuntu-.vim-for-development.git .vim
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc
cd .vim
vim -c 'so %' -c 'q' command-t-1.4.vba &
sleep 10
cd ruby/command-t
ruby extconf.rb
make
reset
echo "#-----------------------------------------------------------------------#"
echo "Create sites directory"
echo "#-----------------------------------------------------------------------#"
cd
mkdir Sites
echo "#-----------------------------------------------------------------------#"
echo "install git-ftp"
echo "#-----------------------------------------------------------------------#"
sudo add-apt-repository ppa:resmo/git-ftp
sudo apt-get update
sudo apt-get install git-ftp
echo "#-----------------------------------------------------------------------#"
echo "office and graphics suites"
echo "#-----------------------------------------------------------------------#"
 sudo apt-get -y --force-yes install libreoffice gimp inkscape gcolor2 gpick agave blender shutter
echo "#-----------------------------------------------------------------------#"
echo "delete unnecessary whatnot"
echo "#-----------------------------------------------------------------------#"
sudo apt-get autoremove
echo "#-----------------------------------------------------------------------#"
echo "Install finished"
echo "You will need to review your Apache2 and PHP configurations as follows:"
echo "add 'extension=uploadprogress.so' to /etc/php5/apache2/php.ini"
echo "change www directory to 'allow all' in /etc/apache2/sites-enabled/default"
echo "#-----------------------------------------------------------------------#"
