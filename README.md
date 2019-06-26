

### Java一键安装
> 版本为1.8 配置root用户环境变量


~~~
 bash <(curl -s -k -L https://raw.githubusercontent.com/GuoJiafeng/ShellScript/master/src/main/resources/javaInstaller.sh)
~~~



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




### Tomcat一键安装
> 版本为8.5  配置root用户环境变量


~~~
 bash <(curl -s -k -L https://raw.githubusercontent.com/GuoJiafeng/ShellScript/master/src/main/resources/tomcatInstaller.sh)
~~~




### Maven一键安装
> 版本为  配置root用户环境变量


~~~
 bash <(curl -s -k -L https://raw.githubusercontent.com/GuoJiafeng/ShellScript/master/src/main/resources/mavenInstaller.sh)
~~~


