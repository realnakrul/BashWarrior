#!/bin/bash
# Write a bash script which takes network interface name as input, checks the interface state and reports it

# if interface is not found stderr output will be redirected to null
STATE=$(ip addr show $1 2>/dev/null | grep state)
# if result of the previous command is 0 (success)
if [ $? -eq 0 ]
then
    #Pattern matching
    STATE=${STATE#*state}
    #Search *state from the beggining and remove
    STATE=${STATE%group*}
    #Match group* from the end and remove
    echo Interface $1 is $STATE
else
    echo Interface $1 not found
fi
