setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
sudo apt-get update
sudo apt-get install -y puppetmaster git
git clone https://github.com/ronde21/module.git
sudo cp -r /home/$USER/module/modules/photo /etc/puppet/modules
sudo cp -r /home/$USER/module/manifests/site.pp /etc/puppet/manifests/
sudo puppet apply -e 'class {"photo":}'
