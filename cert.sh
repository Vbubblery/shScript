#! /bin/bash
apt-get update
apt-get -y install git
git clone https://github.com/letsencrypt/letsencrypt 
cd letsencrypt
./letsencrypt-auto --agree-dev-preview --server https://acme-v01.api.letsencrypt.org/directory auth


#wget https://dl.eff.org/certbot-auto
#chmod a+x ./certbot-auto
#echo "./certbot-auto certonly --standalone --email zhoujuncheng0116@gmail.com -d http2.codelavie.com -d www.example.com -d other.example.net"
#
