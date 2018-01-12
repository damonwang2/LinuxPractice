#!/bin/bash

#计算1到100的值，然后输出结果
s=0
for((i=1; i <= 100; i = i+1))
do
#用$[]表示数值运算
	s=$[ $s + $i ]
done
echo $s
