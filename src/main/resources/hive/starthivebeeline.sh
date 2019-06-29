#!/usr/bin/env bash
echo "     启动BeeLine      "
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

slee 1

echo "打印命令"

echo "/home/hive/apache-hive-1.2.1-bin/bin/beeline -u jdbc:hive2://$HOSTNAME:10000 -n root"

slee 1

/home/hive/apache-hive-1.2.1-bin/bin/beeline -u jdbc:hive2://$HOSTNAME:10000 -n root



