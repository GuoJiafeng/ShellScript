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

service mysql stop


rm -rf /var/lock/subsys/mysql
rm -rf /var/lib/mysql
rm -rf /var/lib/mysql/mysql
rm -rf /usr/lib64/mysql


rpm -e --nodeps MySQL-client-5.5.62-1.el6.x86_64

rpm -e --nodeps MySQL-server-5.5.62-1.el6.x86_64

echo "开始安装Mysql 客户端"
sleep 1

rpm -ivh /root/app/MySQL-client-5.5.62-1.el6.x86_64.rpm

echo "开始安装Mysql 服务端"
sleep 1

rpm -ivh /root/app/MySQL-server-5.5.62-1.el6.x86_64.rpm


#nohup mysqld_safe --skip-grant-table &

sleep 1

service mysql start

echo "mysql 已经启动！，开始修改密码"
sleep 1

read -p "请输入您想要修改的密码："  mysqlpass01

read -p "请输入ENTER继续"


/usr/bin/mysqladmin -u root password ${mysqlpass01}

#mysql -uroot -e "use mysql;"

#mysql -uroot -e "use mysql;"

#mysql -f mysql -e "UPDATE user SET Password=PASSWORD('${mysqlpass01}') where USER='root'"

#mysql  -e "flush privileges;"

#echo "默认开启远程连接权限"

# mysql -f mysql -e "delete from user where password='';"

#mysql -f mysql -e "grant all privileges on *.* to 'root'@'%' identified by '${mysqlpass01}' with grant option;"

#mysql  -e "flush privileges;"

sleep 1

echo "重启Mysql"

service mysql restart


/usr/bin/mysqladmin -u root password 'new-password'
/usr/bin/mysqladmin -u root -h GuoJiafeng01 password 'new-password'