#!/bin/sh

HOUR=`date +%H:%M:%S`

# packet strings are removed to save space in the log
# Give the option -q to ping so that the number of lines is always the same,
# regardingless of the number of tries and the success or not
# option -c 5 tells ping to stop after 5 packets. 
# 5 was chosen because in case the packet does not come back, ping will wait 10 seconds
# Since i want to execute it every minute, 50 seconds are the time limit for each ping operation
PING=`ping -qc 5 8.8.8.8 | sed -n -e '4p' | sed -e "s/ packets transmitted, /\t/; s/ packets received, /\t/; s/ packet loss/\t/"`

echo -e "${HOUR}\t${PING}"
