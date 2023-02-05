#!/bin/bash

#Question 3

#Taking user input
echo "Enter a number to check for Prime or not"
read number

#Function to check if a number is prime or not
check_prime(){
  count=0
  num=$1
  for (( i=2 ; i<=$num/2 ;i++ ));
  do
    if [ `expr $num % $i` -eq 0 ]
    then
       count=1
    fi
  done
  if [ $count -eq 1 ] | [ $num -eq 1 ]
  then
     echo "The given number $num is not a prime number "
  else
     echo "The given number $num is a prime number"
  fi
}

#Checking through case statement if a number is valid or not.If not valid then display the error message otherwise call the check_prime function to display whether number is prime or not.If there is no input,it will display
case $number in
*[^0-9]*)
     echo "Please Enter a Valid Number!! $number is not a number"
     ;;
[0-9]*)
	echo $(check_prime $number)
	;;		 
*)
	echo "Error!! Please Provide Input" 
	;;
esac

