#!/bin/bash
cnt=0
# echo "---new line bigin $(date)---" > buglog.txt
# for((i = 0; i < 10; i++)); do
# 	echo "---cnt=$i----" >> buglog.txt
# 	# (. bug_gen) 2>> buglog.txt 1>> buglog.txt
# 	(. bug_gen) 1>> buglog.txt 2>> buglog.txt
# 	echo $? >> buglog.txt
# done


# record everything output

until [[ $? -eq 1 ]]; do
	((cnt++))	
	echo "it took $cnt times to get fail" > buglog.txt	# reflash logfile every time
	(. bug_gen) 1>> buglog.txt 2>> buglog.txt
done
echo "---new line for ending, $(date)---" >> buglog.txt

#################################################################

echo "---new line bigin, $(date)---" > logfile

while [[ true ]]; do
	((cnt++))
	# ./bug_gen &>> logfile
	# (./bug_gen) &>> logfile
	(. bug_gen) &>> logfile
	# (. bug_gen) 1>> logfile 2>> logfile 
	# err_flag=$? 
	if [[ $? -eq 1 ]]; then
		
		echo "it took $cnt times to get fail" >> logfile	
		break
	fi
done
