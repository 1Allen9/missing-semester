#!/bin/bash

source GetLast3Start.sh

cat last_start.txt | sed -E "s/.*:(.*)/\1/" | sort | uniq -c | awk '$1==3' > Q5_res.txt


