### MySQL一键安装
> 说明：版本为5.5 默认开启远程权限。
~~~
 bash <(curl -s -k -L https://raw.githubusercontent.com/GuoJiafeng/ShellScript/master/src/main/resources/mysqlInstaller.sh)
~~~
> 卸载脚本
~~~
rpm -e --nodeps MySQL-client-5.5.62-1.el6.x86_64

rpm -e --nodeps MySQL-server-5.5.62-1.el6.x86_64
~~~