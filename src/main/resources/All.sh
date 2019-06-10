#!/bin/bash

echo "Java环境一键安装脚本"



echo "安装Java环境（JDK&Tomcat）"
wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --tomcat_option 2 --jdk_option 2 --reboot



echo "安装Maven"




echo "安装Mysql，默认密码为百知"
wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --db_option 2 --dbinstallmethod 1 --dbrootpwd baizhi --reboot



echo "安装Git"

yum remove git*

wget -c "http://files.git.oschina.net/group1/M00/07/63/PaAvDFy5cemAdOGyAH6LPKZEAXw4781.gz?token=9d65cf0f4febc5979b3603b09c3052d6&ts=1555657269&attname=git-2.21.0.tar.gz&disposition=attachment" -O git-2.21.0.tar.gz


tar -zxvf git-2.21.0.tar.gz

cd git-2.21.0

yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-Embed

make prefix=/usr/local/git install

/usr/local/git/bin/git --version




echo "安装Nginx"
wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --nginx_option 1 --reboot