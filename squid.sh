#! /bin/bash

apt-get update && apt-get -y install build-essential fakeroot devscripts gawk gcc-multilib dpatch libssl-dev openssl squid3
cat ~/shScript/squid-ubuntu.conf > /etc/squid3/squid.conf
echo "bubble:4uF4tFlm/.8O6" >> /etc/squid3/passwd
mkdir -p /var/cache/squid3
chmod -R 777 /var/cache/squid3
reboot

#
#wget http://www.squid-cache.org/Versions/v3/3.5/squid-3.5.19.tar.gz
#tar zxf squid-3.5.19.tar.gz
#rm -rf squid-3.5.19.tar.gz
#cd squid*
#./configure --prefix=/usr/local/squid \
#--disable-dependency-tracking \
#--enable-dlmalloc \
#--enable-gnuregex \
#--disable-carp \
#--enable-async-io=80 \
#--with-pthreads \
#--disable-wccp \
#--disable-wccpv2 \
#--enable-kill-parent-hack \
#--enable-cachemgr-hostname=localhost \
#--enable-err-languages=English \
#--enable-default-err-language=English \
#--with-maxfd=65535 \
#--with-aio \
#--disable-poll \
#--enable-epoll \
#--enable-linux-netfilter \
#--enable-large-cache-files \
#--disable-ident-lookups \
#--with-dl \
#--with-large-files \
#--enable-removal-policies=heap,lru \
#--enable-delay-pools \
#--enable-snmp \
#--enable-icap-client \
#--enable-follow-x-forwarded-for \
#--enable-x-accelerator-vary \
#--enable-zph-qos \
#--enable-underscores \
#--enable-ssl \
#--with-openssl
#make && make install

#chmod -R 777 /etc/squid/*
#ln /etc/squid/sbin/squid /usr/local/sbin/squid
#sed -i '/exit/i\squid' /etc/rc.local
#sed -i '/exit/i\iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 25 -j ACCEPT' /etc/rc.local
#sed -i '/exit/i\iptables -A INPUT -p udp -m state --state NEW -m udp --dport 25 -j ACCEPT' /etc/rc.local