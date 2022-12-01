#!/bin/bash

read -p "Enter the number to check prime or not: " number;


if [[ $number -lt 1 ]]
then
	echo "Not allowed";
	exit;
fi

array=():
count=0;
p=0

for ((i=2;i<$number;))
do
	if [[ $number%$i -eq 0 ]]
	then
		factor=$i;
		for (( j=2;j<=$factor / 2; ));
		do
			p=0;
			if [[ $factor%$j -eq 0 ]]
			then
				p=1;
				break;
			fi
			((j++));
		done
	if [[ $p -eq 0 ]];
	then
		array[0]=$factor;
		count=1;
	fi
	fi
	((i++));
done
if [[ $count -eq 0 ]]
then
	echo "no prime factor except 1 and $number";
fi

echo "${array[@]}";