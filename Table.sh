#!/bin/bash


#Question 2

#Taking user input
echo "Enter the number: "
read n


# Checking through case statement
case $n in
#Regular expression to check if the given input is not a number. If satisfies it results in a invalid input 	
*[^0-9]*)
     echo "Please input only number!! $n is not a number"
     ;;
#Regex to check for number	 
[0-9]*)
    i=1

    while [ $i -le 10 ] 
    do
    res=`expr $i \* $n`

    echo "$n * $i = $res"

   (( ++i))

    done
    ;;
#Condition that will handle the situation when there is no input	
*)
    echo "Error!! Please Provide Input To Get The Table"
    ;;
esac
