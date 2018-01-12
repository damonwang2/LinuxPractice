#!/bin/bash
#统计
rate=$(df -h | grep rootfs | awk '{print $5}' | cut -d "%" -f 1)

echo "磁盘已经使用${rate}%"

if [ $rate -ge 80 ];then
	echo "磁盘使用大于80%"

elif [ $rate -ge 70 ];then
	echo "磁盘使用大于70%"

elif [ $rate -ge 60 ];then
	echo "磁盘使用大于60%"

elif [ $rate -ge 50];then
	echo "磁盘使用大于50%"

fi
