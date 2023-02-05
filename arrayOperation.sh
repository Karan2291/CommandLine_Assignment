#!/bin/bash

#Question 5

#Taking the user input for size of an array
echo "Enter the size of array: "
read size


# Taking User Input From shell for an array
#Assigining an empty array
arr=()
for(( i=0; i<size ;i++ ));
do
	echo "Enter $(($i+1)) element"
	read n
	arr[$i]=$n
done

echo "Total Number of elements: ${#arr[@]}"
echo "The array elements are: "
echo ${arr[@]}

# Function to find maximum and minimum element in a given array
max_min_ele(){
	max=${arr[0]}
	min=${arr[0]}

	for ele in "${arr[@]}";
	do
	  if [ $ele -gt $max ]
	  then
	    max=$ele
	  fi
	  if [ $ele -lt $min ]
	  then
		min=$ele
	  fi
	done
	echo "Maximum element in an array: $max"
	echo "Minimum element in an array: $min"
}

#Calling the above function max_min_ele
max_min_ele