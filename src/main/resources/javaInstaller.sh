#!/usr/bin/env bash

echo "安装Java"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

sleep 3


echo "解压Java至Home下的Java目录"

rm -rf /home/java/*

mkdir /home/java

tar -zxvf /root/app/jdk-8u181-linux-x64.tar.gz -C /home/java


echo "解压完成"


sleep 3

echo "开始配置环境变量"

echo "请注意：环境变量配置为root用户的环境变量"


echo "export JAVA_HOME=/home/java/jdk1.8.0_181/" >> /root/.bashrc

source /root/.bashrc

echo "export PATH=$PATH:$JAVA_HOME/bin" >> /root/.bashrc

source /root/.bashrc

echo "配置完成"




