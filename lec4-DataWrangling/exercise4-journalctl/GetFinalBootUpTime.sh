#!/bin/bash

sed -E 's/.* =*(.*)s./\1/' boot_up_time.txt > bootup_final_time.txt
