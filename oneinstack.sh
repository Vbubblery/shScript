#! /bin/bash
apt-get update
cd ~
apt-get -y install python
wget http://mirrors.linuxeye.com/oneinstack-full.tar.gz
tar xzf oneinstack-full.tar.gz
rm -rf oneinstack-full.tar.gz

cat /root/shScript/nginx.sh > /root/oneinstack/include/nginx.sh
