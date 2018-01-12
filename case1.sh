#!/bin/bash

read -p "Please input 1 or 2:" input
case $input in
	"1")
		echo "1 first";;
	"2")
		echo "2";;
	"1")
		echo "1 second";;
	*)
		echo "not 1 or 2";;
esac
