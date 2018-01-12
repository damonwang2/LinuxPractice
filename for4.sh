#!/bin/bash

read -p "Please input user name:" name
read -p "Please input user num:" num
read -p "Please input user password:" password

if [ ! -z "$name"  -a  ! -z "$num"  -a  ! -z "$password" ];then
	#把字符串中的0-9替换为空，格式为s/原字符串/新字符串/g
	y=$(echo $num | sed 's/[0-9]//g')
	if [ -z "$y" ];then
		echo "num非空"
		for((i=1; i <= $num; i = i + 1))
		do
			echo "$name$i:$password"
		done
	fi
else
	echo "输入错误"
fi

