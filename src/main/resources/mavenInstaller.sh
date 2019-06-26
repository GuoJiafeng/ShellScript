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