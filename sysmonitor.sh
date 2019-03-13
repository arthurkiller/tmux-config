#!/bin/bash
net=`sar -n DEV 1 5 | grep Average | grep eth1 | awk '{print "↓:"$4"kb ↑ "$5"kb"}'`
cpu=`mpstat | grep all | awk '{print "user "$4" sys "$5" idle "$12}'`
echo -ne "$net $cpu \r"
