#!/bin/bash
# Write a bash script which takes network interface name as input, checks the interface state and reports it

STATE=$(ip addr show $1 | grep state)
if [ $? -eq 0 ]
then
    STATE=${STATE#*state}
    STATE=${STATE%group*}
    echo Interface $1 is $STATE
else
    echo Interface $1 not found
fi
