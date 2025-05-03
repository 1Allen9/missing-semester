#!/bin/bash

journalctl -b -0 > last_start.txt
for i in {1..2};
do
	journalctl -b -$i >> last_start.txt
done

