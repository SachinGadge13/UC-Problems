#!/bin/bash -x

Present=1
randomCheck=$((RANDOM%2))

if (( $Present == $randomCheck ))
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
