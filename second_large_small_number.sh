#!/bin/bash

arry=();


num1=$(( RANDOM%899+100 ));
num2=$(( RANDOM%899+100 ));
num3=$(( RANDOM%899+100 ));
num4=$(( RANDOM%899+100 ));
num5=$(( RANDOM%899+100 ));
num6=$(( RANDOM%899+100 ));
num7=$(( RANDOM%899+100 ));
num8=$(( RANDOM%899+100 ));
num9=$(( RANDOM%899+100 ));
num10=$(( RANDOM%899+100 ));

arry[0]=$num1;
arry[1]=$num2;
arry[2]=$num3;
arry[3]=$num4;
arry[4]=$num5;
arry[5]=$num6;
arry[6]=$num7;
arry[7]=$num8;
arry[8]=$num9;
arry[9]=$num10;

echo ${arry[@]};

IFS=$'\n' sorted=($(sort <<<"${arry[*]}")); unset IFS
echo "${sorted[@]}";
echo "The 2nd largest number from all random number: ${sorted[-2]}";
echo "The 2nd samllest number from all random number: ${sorted[1]}";


