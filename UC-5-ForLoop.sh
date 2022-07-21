#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
#numOfWorkingDays=20

totalSalary=0

for (( day=1; day<=20; day++ ))
do
	randomCheck=$((RANDOM%3))
		case $randomCheck in
				$isFullTime )
					empHrs=8
				;;
				$isPartTime )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
		esac

	salary=$(($empHrs*$empRatePerHr))  #dailywage
 	totalSalary=$(($totalSalary+$salary)) #totalsalaryforamonth
done
