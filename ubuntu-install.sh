echo "#-----------------------------------------------------------------------#"
Install base needs
echo "#-----------------------------------------------------------------------#"

sudo apt-get update
sudo apt-get install -y curl git build-essential
echo "#-----------------------------------------------------------------------#"
source bash_settings.sh
source server-setup.sh
source nodejs.sh

