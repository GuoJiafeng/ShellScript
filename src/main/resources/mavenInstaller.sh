#!/usr/bin/env bash
echo "安装Maven"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"



echo "开始安装Maven"
rm -rf /home/maven/*
mkdir /home/maven

tar -zxvf /root/app/apache-maven-3.3.9-bin.tar.gz -C /home/maven



echo "开始配置环境变量"


echo "export MAVEN_HOME=/home/maven/apache-maven-3.3.9/" >> /root/.bashrc

source /root/.bashrc

echo "export PATH=$PATH:$MAVEN_HOME/bin" >> /root/.bashrc

source /root/.bashrc

sleep 3

echo "配置完成"

sleep 3

echo "开始配置Maven"


echo "创建本地仓库 /home/maven/local"

mkdir /home/maven/local

echo "配置阿里云镜像源"


rm -rf $MAVEN_HOME/conf/settings.xml


echo "下载settings.xml配置文件"

wget https://raw.githubusercontent.com/GuoJiafeng/ShellScript/master/src/main/resources/maven/settings.xml

sleep 3

echo "下载完成"

cp settings.xml   $MAVEN_HOME/conf/

echo "Maven相关配置完成"
