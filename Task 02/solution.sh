#!/bin/bash
# You have a folder with random amount of JPEG files with different names. Write a bash script which renames those files in sequential order.

LIST=$(find *.jpg)
if [ $? -eq 0 ]
F=1
then
    for f in $LIST
    do
        echo "cp $f $F.jpg"
        F=$(($F+1))
    done
fi
