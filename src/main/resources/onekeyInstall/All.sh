#!/bin/bash

echo "Java环境一键安装脚本"



echo "安装Java环境（JDK&Tomcat）"
# wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --tomcat_option 2 --jdk_option 2 --reboot





echo "安装Maven"
echo " --------------------"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " --------------------"





------------------------------------------------------
echo "安装Mysql"
echo " --------------------"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " --------------------"

# wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --db_option 2 --dbinstallmethod 1 --dbrootpwd baizhi --reboot
echo "卸载原有Mysql"
sleep 1

yum remove -y mysql*

rm -rf MySQL-*

rpm -e --nodeps MySQL-client-5.5.61-1.el6.x86_64

rpm -e --nodeps MySQL-server-5.5.61-1.el6.x86_64


rpm -ivh MySQL-client-5.5.61-1.el6.x86_64.rpm
rpm -ivh MySQL-server-5.5.61-1.el6.x86_64.rpm


nohup mysqld_safe --skip-grant-table &

sleep 1

echo "mysql 已经启动！，开始修改密码"
sleep 1

read -p "请输入您想要修改的密码："  mysqlpass01

read -p "请输入ENTER继续"

#mysql -uroot -e "use mysql;"

mysql -f mysql -e "UPDATE user SET Password=PASSWORD('${mysqlpass01}') where USER='root'"

mysql  -e "flush privileges;"


echo "开启远程连接权限"
mysql -f mysql -e "delete from user where password='';"
mysql -f mysql -e "grant all privileges on *.* to 'root'@'%' identified by '${mysqlpass01}' with grant option;"
mysql  -e "flush privileges;"


echo "重启Mysql"

service mysql restart

------------------------------------------------------


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