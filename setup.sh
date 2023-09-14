## Basic ubuntu based setup

##git 
sudo apt-get install git-all
git config --global user.name "Arthur Tavares"
git config --global user.email arthurabreu00@gmail.com

## Install snap
sudo apt install snap

## Terminal
sudo apt-get install zsh 
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash


## Docker 
 sudo apt-get remove docker docker-engine docker.io containerd runc
 sudo apt-get update

 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

 sudo mkdir -p /etc/apt/keyrings

 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 sudo apt-get update

 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

 sudo docker run hello-world

 sudo usermod -aG docker $USER
 newgrp docker 
 docker run hello-world

## If has erros:
 sudo chown "$USER":"$USER" /home/"$USER"/.docker -R

 sudo chmod g+rwx "$HOME/.docker" -R


 ## Install PHP8.2
 sudo apt update && sudo apt upgrade

 sudo apt install software-properties-common
 sudo add-apt-repository ppa:ondrej/php
 sudo apt update
 
 sudo apt install php8.2

 php -v

 ## Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
composer --version

## Install NodeJs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
nvm use node

## Slack

sudo snap install slack

## Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb