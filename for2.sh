#!/bin/bash

#执行本目录的所有bash文件(除了本文件for2.sh)

#获取所有的bash文件
ls *.sh > ls.log

#执行循环
for file in $(cat ls.log) 
do
if [ $file != "for2.sh" ];then
	bash $file
fi
done
