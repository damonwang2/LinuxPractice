#!/bin/bash

i=1
s=0
while [ $i -le 100 ]
do
	#这里是表达式，可以通过$[]或者$(())
	s=$[$s+$i]
	i=$(($i+1))
done
echo $s
echo $s+1
