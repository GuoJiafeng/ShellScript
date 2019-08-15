#!/usr/bin/env bash

echo "清理Maven未下载完成依赖"
echo " --------------------"
echo "| author：GuoJiafeng |"
echo "| company：Baizhi    |"
echo " --------------------"
find ~  -name "*lastUpdated"  | xargs rm -fr

echo "清理完毕"
