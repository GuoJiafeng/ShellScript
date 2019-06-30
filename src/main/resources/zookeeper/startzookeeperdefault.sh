#!/usr/bin/env bash

echo "启动ZooKeeper  默认端口为2181"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

sleep 1

echo "打印命令"

echo "/home/zk/zookeeper-3.4.6/bin/zkServer.sh start  /home/zk/zookeeper-3.4.6/conf/zk.conf"


echo "开始启动"

/home/zk/zookeeper-3.4.6/bin/zkServer.sh start  /home/zk/zookeeper-3.4.6/conf/zk.conf

echo "启动成功"


