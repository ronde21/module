setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
sudo apt-get update
sudo apt-get install -y puppet tree git
git clone https://github.com/ronde21/module.git
sudo cp -r /home/$USER/module/modules /etc/puppet/modules
sudo puppet apply -e 'class {"photo":}'
