#! /bin/bash
sleep 1;
grep -E "Gammu" gammu.log
grep -E "Connection" gammu.log
grep -E "Model type" gammu.log
grep -E "Device" gammu.log
grep -E "Running on" gammu.log
grep -E "Connected model" gammu.log
grep -E "Firmware version" gammu.log
grep -E "Serial device:" gammu.log
sleep 1;
echo "Develop: IgnatiyOS"
sleep 1;

cat /home/service/dfg | while read I
do
A=$(< /home/service/index) 
sudo gammu sendsms TEXT "$I" -unicode -report -text "$A"
sleep $[$RANDOM % 20 + 10]s
done
