# CommandLine_Assignment
This is my CommandLine Assignment

Below the screenshot of the question I have explained my approach in a very detailed manner and output for each question is shown below.

For peer learning documentation:
[Refer Here](https://github.com/Karan2291/CommandLine_Assignment/blob/main/Peer_learning_CommandLine_Documentation)

## Assignment Questions Screenshot
<img width="659" alt="Screenshot 2023-02-05 at 4 48 20 PM" src="https://user-images.githubusercontent.com/122456892/216816079-7c2ddf6b-b687-4b39-9a1e-555e723ac3fc.png">

## Explanation of My Approach:

### QUESTION 1:

__Write a bash script to get the current date, time, username, home directory and current working directory.__

* Used the following commands to get the desired result
```
--------------------------------------------------------------------------
| $(date)     : Command to fetch current date and time                   |
--------------------------------------------------------------------------
| $(date +%F) : Command to fetch only date.                              |
--------------------------------------------------------------------------
| $(date +%T) : Command to fetch only time                               |
--------------------------------------------------------------------------
| $(whoami)   : Command to fetch username of the current working user.   |
--------------------------------------------------------------------------
| $HOME       : Command to get Home Directory.                           |
--------------------------------------------------------------------------
| $(pwd)      : ommand to get users current working directory            |
--------------------------------------------------------------------------
```
### OUTPUT
----------------------------------------
<img width="563" alt="Screenshot 2023-02-19 at 3 08 03 AM" src="https://user-images.githubusercontent.com/122456892/219900573-abed23d7-2a79-4f27-8650-a5ad86b83088.png">

----------------------------------------

### QUESTION 2:

Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
* The script should accept the input from the command line.
* If you don’t input any data, then display an error message to execute the script correctly.
#### My Approach:-

* First I have taken the user input to accept a number for which we need to find the table (read n :- is the command which is accepting user input)
* Next using CASE STATEMENT in bash scrpting I am checking if a given number is valid or not.
     * First of all i am checking if the given number contains alphabets or any special sumbols as it would result in a invalid number.
         For that i am using regular expression `(*[^0-9]*)` in my case statement which will result in true if the given number contains
         any alphabets or special symbols and that would prompt the user to enter valid number (NOTE:- Output screenshot is in README.md file)
     * Next I checked if a given number is a number by using regex `([0-9]*)` in my case statement.Upon satisfying it will print the table for 
         that particular number (NOTE:- Output screenshot is in README.md file)
     *  Next I used `(*)` in my last case statement which means everything else other than alphanumeric ,specialsymbols,numbers.
         That is if user does not pass any argument it will get handle by this case statement.Upon satisfying, it will prompt the user to input the 
         number `(echo "Error!! Please Provide Input To Get The Table")` (NOTE:- Output screenshot is in README.md file
* In my while loop to generate table,
     I initialized i to 1, then I applied the condition `while [ $i -le 10 ]:` which means if i is less than equal to 10
      do
     ``res=`expr $i \* $n` :`` which will calculate the product of i with the given number where i will vary from 1 to 10 
     `echo "$n * $i = $res":` to display in the table format
     `(( ++i)):` Incrementing i by 1
     done
     
 ### OUTPUT
 
 #### TEST CASE 1:
 * When the argument provided is number
 ----------------------------------------
 <img width="527" alt="Screenshot 2023-02-19 at 3 29 06 AM" src="https://user-images.githubusercontent.com/122456892/219901293-220006aa-b9ff-4a44-9ac5-5b216dd8662d.png">
 
 ----------------------------------------
 
  #### TEST CASE 2:
 * When the argument provided is alphanumeric
  ----------------------------------------
 <img width="493" alt="Screenshot 2023-02-19 at 3 29 34 AM" src="https://user-images.githubusercontent.com/122456892/219901301-608e1562-a200-4ce3-a46d-c982780db879.png">
 
 ----------------------------------------

 #### TEST CASE 3:
 * When the argument provided includes special symbols
 ----------------------------------------
<img width="493" alt="Screenshot 2023-02-19 at 3 30 03 AM" src="https://user-images.githubusercontent.com/122456892/219901305-8d031725-cad0-4e9f-8605-276519e44a44.png">

----------------------------------------

 #### TEST CASE 4:
 * When their is no argument provided by the user
 ----------------------------------------
<img width="493" alt="Screenshot 2023-02-19 at 3 30 17 AM" src="https://user-images.githubusercontent.com/122456892/219901306-129a8a6e-c9a3-458f-a6c3-749c3f679898.png">

----------------------------------------

### QUESTION 3:

Write a Function in bash script to check if the number is prime or not? It should support the following requirement. - The script should accept the input from the User.

#### My Approach:-
* First I have prompted the user for input to enter a number.Then I created the function `check_prime()` which checks if the given number is prime or not.
    * In my check_prime() function 
        * I am taking a count variable which will keep a track if a number is divisible by any number other than 1 and itself
        * then I am fetching the number that is being passed to the `function(by num=$1)` : ($1-fetches the first argument               passed to the function)
        * Then I am running the loop from `2` to `num/2` and checking if the given number is divisible in the following range.           If the given number is divisible by any of the number in the `range[2,num/2]` then i am setting count to 1 which               indicates number is not a prime number otherwise  if the number is not divisible by any of the number in the range             then count remains 0 and the number is prime
        * Outside the while loop I am checking if the count is 1 or 0.If 1 that means the given number is prime otherwise not           prime.
      
* Now I have validated the input passed by the user is number or not using `CASE STATEMENT`.     
    * First of all i am checking if the given number contains alphabets or any special sumbols as it would result in a invalid number.
      For that i am using regular expression `(*[^0-9]*)` in my case statement which will result in true if the given number contains
      any alphabets or special symbols and that would prompt the user to enter valid number (NOTE:- Output screenshot is in README.md file)
    * Next I checked if a given number is a number by using `regex([0-9]*)` in my case statement.Upon satisfying
      it will call the `check_prime()` number to check if the number is prime or not
    * Next I used `(*)` in my last case statement which means everything else other than alphanumeric ,specialsymbols,numbers.
      That is if user does not pass any argument it will get handle by this case statement.Upon satisfying, it will prompt the user to input the 
      number `(echo "Error!! Please Provide Input")` (NOTE:- Output screenshot is in README.md file)

 ### OUTPUT
 
 #### TEST CASE 1:
 * When the argument provided is number
----------------------------------------
 <img width="493" alt="Screenshot 2023-02-19 at 3 44 20 AM" src="https://user-images.githubusercontent.com/122456892/219901683-c6579ba4-528f-4c7d-be24-6f43d48a84c4.png">
 
 ----------------------------------------
 
 #### TEST CASE 2:
 * When the argument provided is alphanumeric
  ----------------------------------------
 <img width="493" alt="Screenshot 2023-02-19 at 3 44 49 AM" src="https://user-images.githubusercontent.com/122456892/219901690-5bf94c75-af7c-45fb-a803-efc526af5ffb.png">
 
----------------------------------------

 #### TEST CASE 3:
 * When the argument provided includes special symbols
 ----------------------------------------
<img width="493" alt="Screenshot 2023-02-19 at 3 45 09 AM" src="https://user-images.githubusercontent.com/122456892/219901697-a173800f-93f0-49ba-983f-c5618046b5ec.png">

----------------------------------------


 #### TEST CASE 4:
 * When their is no argument provided by the user
 ----------------------------------------
<img width="493" alt="Screenshot 2023-02-19 at 3 45 38 AM" src="https://user-images.githubusercontent.com/122456892/219901708-2978d94c-ed07-4660-bc6f-3b4d6c4a7938.png">

----------------------------------------

### QUESTION 4:

Create a bash script that supports the following requirement.

* Create a folder ‘Assignment’.
* Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
* Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
* Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
* List all the directories and files present inside Desktop Folder.

#### My Approach:-

* Used the following commands to get the desired result
```
-------------------------------------------------------------------------------------------------------------------------
| mkdir Assignment                               : Command for creating the Assignment folder                           |
-------------------------------------------------------------------------------------------------------------------------
| touch Assignment/File1.txt                     : Command for creating the file "File1.txt" inside Assignment folder.  |
-------------------------------------------------------------------------------------------------------------------------
| cat Table.sh > Assignment/File1.txt.           : Command for copying the content of table.sh in File1.txt             |
-------------------------------------------------------------------------------------------------------------------------
| str="Welcome to Sigmoid"                                                                                              |
| echo $str >> Assignment/File1.txt              : Commands to append the text("Welcome to Sigmoid") in File1.txt       |
-------------------------------------------------------------------------------------------------------------------------
| ls -al ~/Desktop >> DesktopListDirectories.txt : Listing all the directories and files present inside Desktop Folder  |
|                                                 and appending it to another text file                                 |
------------------------------------------------------------------------------------------------------------------------
| echo "Created a file DesktopListDirectories.txt containing all the list and directories present inside Desktop folder"|
| open DesktopListDirectories.txt                                                                                       |
------------------------------------------------------------------------------------------------------------------------
```

 ### OUTPUT :
 
 <img width="563" alt="Screenshot 2023-02-19 at 11 20 40 AM" src="https://user-images.githubusercontent.com/122456892/219931507-1050bed9-45e1-4895-a4ad-a50860b3ecc3.png">
 
 ----------

Creating the Assignment folder in a current working directory
* ` mkdir Assignment `

<img width="661" alt="Screenshot 2023-02-19 at 11 21 05 AM" src="https://user-images.githubusercontent.com/122456892/219931537-d86dea6b-bfec-4a28-b952-b50918d906df.png">

-----------

Creating the File1.txt inside the Assignment folder created above
* ` touch Assignment/File1.txt `

<img width="444" alt="Screenshot 2023-02-19 at 11 21 22 AM" src="https://user-images.githubusercontent.com/122456892/219931558-504773cc-0cc2-40c1-866a-020e83cd281b.png">

----------

Copying the content of Table.sh to the File1.txt file created above inside the Assignment folder
* `cat Table.sh > Assignment/File1.txt.`

Commands to append the text("Welcome to Sigmoid") in File1.txt
* `str="Welcome to Sigmoid"`
* `echo $str >> Assignment/File1.txt`

<img width="716" alt="Screenshot 2023-02-19 at 11 21 42 AM" src="https://user-images.githubusercontent.com/122456892/219931573-3ec66dbc-ec54-4d89-97c1-888152b3f75a.png">

----------

Listing all the directories and files present inside Desktop Folder and appending it to another text file 
* `ls -al ~/Desktop >> DesktopListDirectories.txt`   

<img width="684" alt="Screenshot 2023-02-19 at 11 22 33 AM" src="https://user-images.githubusercontent.com/122456892/219931739-d2ae3224-65c0-4bfc-b50d-637ccad76585.png">

----------

### QUESTION 5:
You have given an array. Using Bash script, print its length, maximum element and minimum element.
arr=( 2 3 4 1 6 7).

#### My Approach:-

* Here I have taken the user input for an array.
    * First I have prompt user to input the size of the array
    * Then accordingly i am prompting user to input array elements as per the size given by user
* Then for displaying the total number of elements i.e.,length of the array I have used `${#arr[@]}` command`(echo "Total Number of elements:${#arr[@]}")`       
* Then I have created the function `max_min_ele()` which is responsible to find `maximum` and `minimum` element in a given array
   Inside the function
      * First I have assigned the first element of the array to max and min variable
      * Then I am traversing the array and for each element I am checking if the current element is greater than max, if its greater than max
        then assigning the max with that particular element and same for minimum if the current element is less than minimum,then assigning the min 
        with that particular element
      * After Traversing the whole array I am getting the desired result which i am displaying with the help of
         `echo "Maximum element in an array: $max"`
	       `echo "Minimum element in an array: $min"`
         
 ### OUTPUT:-
 
 <img width="567" alt="Screenshot 2023-02-19 at 11 42 57 AM" src="https://user-images.githubusercontent.com/122456892/219932216-57d9f507-0d6b-4da2-a2c7-c0398a4d7a34.png">

 
         


```
-> Question 1. -> user.sh
-> Question 2. -> Table.sh
-> Question 3. -> checkPrime.sh
-> Question 4. -> fileOperation.sh
-> Question 5. -> arrayOperation.sh
```
