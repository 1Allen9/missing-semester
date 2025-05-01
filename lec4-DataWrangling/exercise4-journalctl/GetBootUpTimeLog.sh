#!/bin/bash

journalctl -b | grep "Startup finished in .* = .*" > boot_up_time.txt
for i in {1..9};
do
		journalctl -b -$i | grep "Startup finished in .* = .*" >> boot_up_time.txt
done

