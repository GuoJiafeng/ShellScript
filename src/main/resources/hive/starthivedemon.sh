#!/usr/bin/env bash
echo "后台方式启动Hive Server"
echo " ————————————————————"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " ————————————————————"

slee 1

echo "打印命令"

echo " /home/hive/apache-hive-1.2.1-bin/bin/hiveserver2 &"

/home/hive/apache-hive-1.2.1-bin/bin/hiveserver2 &


slee 1

echo "JPS 看到RunJar 即代表启动成功！"