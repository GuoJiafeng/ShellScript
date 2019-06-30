#!/usr/bin/env bash
echo "        启动kafka"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

sleep 1

echo "打印命令"

echo "/home/kafka/kafka_2.11-0.11.0.0/bin/kafka-server-start.sh   -daemon  /home/kafka/kafka_2.11-0.11.0.0/config/server.properties"


echo "开始启动"

/home/kafka/kafka_2.11-0.11.0.0/bin/kafka-server-start.sh   -daemon  /home/kafka/kafka_2.11-0.11.0.0/config/server.properties

echo "启动成功"
