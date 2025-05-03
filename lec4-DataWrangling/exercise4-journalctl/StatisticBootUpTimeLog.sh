#!/bin/bash

average=$(awk '{s+=$1} END{print s/10}' bootup_final_time.txt)
#max=$(sort -nr bootup_final_time.txt | head -n1)
max=$(awk '(max_time < $1) {max_time=$1} END{print max_time}'  bootup_final_time.txt)
min=$(sort -n bootup_final_time.txt | head -n1)
median=$(cat bootup_final_time.txt | sort -n | paste -s |  awk '{print ($5+$6)/2}')

echo "average time = $average s" > BootUpTimeStatistic.log
echo "max time = $max s"         >> BootUpTimeStatistic.log
echo "min time = $min s"         >> BootUpTimeStatistic.log
echo "median time = $median s"   >> BootUpTimeStatistic.log
cat  BootUpTimeStatistic.log
