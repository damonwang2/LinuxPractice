#!/bin/bash
date=$(date +%y%m%d)
size=$(du -sh /home/damon/metastore_db)

if [ -d /home/damon ];then
echo "备份/home/damon/metastore_db"
echo "Date:$date" > /home/damon/dbinfo.txt
echo "Size:$size" >> /home/damon/dbinfo.txt
cd /home/damon
tar -zcf db-$date.tar.gz metastore_db dbinfo.txt &> /dev/null  

else
echo "can't find /home/damon"
fi
