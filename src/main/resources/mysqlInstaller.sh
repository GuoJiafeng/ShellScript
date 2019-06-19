#!/usr/bin/env bash
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

rpm -e --nodeps MySQL-client-5.5.62-1.el6.x86_64

rpm -e --nodeps MySQL-server-5.5.62-1.el6.x86_64


rpm -ivh /root/app/MySQL-client-5.5.62-1.el6.x86_64.rpm
rpm -ivh /root/app/MySQL-server-5.5.62-1.el6.x86_64.rpm


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