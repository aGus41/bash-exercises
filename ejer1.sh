#!/bin/bash

# Prints arguments passed deleting the last one on each iteration

while [ $# -ne 0 ]
do 
	echo "$*"
shift
done
