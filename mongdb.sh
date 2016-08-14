#! /bin/bash

iptables -I INPUT -p tcp -m tcp --dport $1 -j ACCEPT
iptables-save