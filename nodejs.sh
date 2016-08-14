#! /bin/bash
apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
apt-get install -y build-essential
npm install -g express-generator@4