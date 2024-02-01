#!/bin/bash

# This scripts takes either two parameters and returns their corresponding exponential result or takes a
# single parameter and returns its factorial result

while getopts "e:f:" opt; do
	case $opt in
		e)	
			if [ $# -eq 3 ]; then
				source ./exponent.sh  $2 $3
			else
				echo Error: Invalid entries
			fi
			;;
		f)
			if [ $# -eq 2 ]; then
				source ./factorial.sh $OPTARG
			else
				echo Error: Invalid entries
			fi
			;;
		*) 
			echo Error: invalid option used
			exit 1
	esac
done



