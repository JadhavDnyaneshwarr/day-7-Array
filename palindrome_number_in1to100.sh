#!/bin/bash

array=();
n=0;

	for (( number=1; number<=100; number=$((number+1)) ))
	do
		palindrome=$(( $number%11 ));
		if [[ $palindrome -eq 0 ]]
		then
			array[n]=$number;
			((n++));
			
		fi	
	done
echo "${array[@]}";