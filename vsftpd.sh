#! /bin/bash
apt-get update
apt-get install -y vsftpd
mkdir /var/wwwftp
chmod -R 777 /var/wwwftp
chgrp -R ftp /var/wwwftp
useradd bubble -d /var/wwwftp -s /sbin/false
ehco "The password of the user:"
passwd bubble
adduser bubble ftp
echo "/sbin/false" >> /etc/shells

echo "modify the /etc/vsftpd.conf"
echo "anonymous_enable=NO 禁止匿名用户访问ftp"
echo "local_enable=YES 允许本地用户访问ftp"
echo "write_enable=YES 允许写操作"
echo "local_umask=022 上载文件的时候，使用的掩码是022"
echo "service vsftpd restart"

