#! /bin/bash

cat /home/service/dfg | while read I
do
A=$(< /home/service/index) 
sudo gammu sendsms TEXT "$I" -unicode -report -text "$A"
sleep $[$RANDOM % 20 + 10]s
done