#!/bin/bash

sudo apt-get install update -y
sudo apt-get install upgrade -y
sudo apt-get install nginx -y
sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo apt-get python -y
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo npm install pm2 -g
echo "here comes npm"
sudo cp -f /home/vagrant/environment/default /etc/nginx/sites-available/default
cd /home/vagrant/app
sudo systemctl restart nginx
npm install 
npm start

