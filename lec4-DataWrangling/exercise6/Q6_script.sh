#!/bin/bash

 min=$(sed -E 's/".*\[(.*)\].*/\1/' DataSet.json | sed '/^\s*$/d' |  sed '$d' | sed '1d' | awk -F"," '{print $1,$2}' | awk '{print $1}' | sort -n | head -n1)
 min2=$(sed -E 's/".*\[(.*)\].*/\1/' DataSet.json | sed '/^\s*$/d' |  sed '$d' | sed '1d' | awk -F"," '{print $1,$2}' | awk '{print $2}' | sort -n | head -n1)
 max=$(sed -E 's/".*\[(.*)\].*/\1/' DataSet.json | sed '/^\s*$/d' |  sed '$d' | sed '1d' | awk -F"," '{print $1,$2}' | awk '{print $1}' | sort -n | tail -n1)
 max2=$(sed -E 's/".*\[(.*)\].*/\1/' DataSet.json | sed '/^\s*$/d' |  sed '$d' | sed '1d' | awk -F"," '{print $1,$2}' | awk '{print $2}' | sort -n | tail -n1)
 dif=$(sed -E 's/".*\[(.*)\].*/\1/' DataSet.json | sed '$d' | sed '1d' | awk -F"," '{print $1,$2}' | awk '{print $1,$2}' | awk '{s1+=$1} {s2+=$2} END{print s1-s2}')


 echo "min of col1 = $min"
 echo "min of col2 = $min2"
 echo "max of col1 = $max"
 echo "max of col2 = $max2"
 echo "diff of col1-col2 = $dif"
