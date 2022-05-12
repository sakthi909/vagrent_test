#!/bin/bash

cpu_load=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'|cut -c 1-3)

echo $cpu_load
if [[ "$cpu_load" > 1 ]]
then
  poweroff
  echo vm will shutoff
else
 echo cpu usage is low
fi
