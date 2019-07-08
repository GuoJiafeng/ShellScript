#!/usr/bin/env bash

echo "安装Mysql"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

# wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh --db_option 2 --dbinstallmethod 1 --dbrootpwd baizhi --reboot
echo "卸载原有Mysql"
sleep 1

yum remove -y mysql*


echo "停止Mysql服务"

service mysql stop

rpm -e --nodeps MySQL-client-5.5.62-1.el6.x86_64

rpm -e --nodeps MySQL-server-5.5.62-1.el6.x86_64

rpm -e --nodeps mysql-libs-5.1.73-8.el6_8.x86_64

echo "删除相关文件"
rm -rf /var/lock/subsys/mysql
rm -rf /var/lib/mysql
rm -rf /var/lib/mysql/mysql
rm -rf /usr/lib64/mysql
rm -rf /usr/bin/mysql
rm -rf /usr/share/mysql
rm -rf /etc/rc.d/init.d/mysql
rm -rf /etc/logrotate.d/mysql
rm -rf /usr/share/mysql/*





echo "安装依赖环境 perl"
sleep 1
yum install perl


echo "开始安装Mysql 客户端"
sleep 1

rpm -ivh /root/app/MySQL-client-5.5.62-1.el6.x86_64.rpm

echo "开始安装Mysql 服务端"
sleep 1

rpm -ivh /root/app/MySQL-server-5.5.62-1.el6.x86_64.rpm

echo "确认已经关闭mysqld_safe进程"

mysqld_safepid=$( ps | grep mysqld_safe  |  awk '{print $1}')

kill -9 $mysqld_safepid

echo "启动mysqld_safe进程"
nohup mysqld_safe --skip-grant-table &

sleep 1

echo "mysql 已经启动！，开始修改密码"
sleep 1

read -p "请输入您想要修改的密码："  mysqlpass01
read -p "请输入ENTER继续"



mysql -f mysql -e "UPDATE user SET Password=PASSWORD('${mysqlpass01}') where USER='root'"

mysql  -e "flush privileges;"

echo "重启Mysql"

service mysql restart


echo "默认开启远程连接权限"

mysql -uroot -p${mysqlpass01}  -e "use mysql;"

mysql -uroot -p${mysqlpass01}  -f mysql -e "delete from user where password='';"

mysql -uroot -p${mysqlpass01}  -f mysql -e "grant all privileges on *.* to 'root'@'%' identified by '$mysqlpass01' with grant option;"

mysql -uroot -p${mysqlpass01} -e "flush privileges;"

sleep 1

echo "重启Mysql"

service mysql restart

echo "结束mysqld_safe进程"

mysqld_safepid=$( ps | grep mysqld_safe  |  awk '{print $1}')

kill -9 $mysqld_safepid


echo "安装完成"


echo "您的密码为:${mysqlpass01},请牢记！"

