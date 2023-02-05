#!/bin/bash

#Question 4

# Command for creating the Assignment folder
mkdir Assignment

# Command for creating the file "File1.txt" inside Assignment folder
touch Assignment/File1.txt


#Command for copying the content of table.sh in File1.txt
cat Table.sh > Assignment/File1.txt

# Commands to append the text("Welcome to Sigmoid") in File1.txt
str="Welcome to Sigmoid"
echo $str >> Assignment/File1.txt

# Listing all the directories and files present inside Desktop Folder and appending it to another text file
# ls -al ../ >> DesktopListDirectories.txt
ls -al ~/Desktop >> DesktopListDirectories.txt

echo "Created a file DesktopListDirectories.txt containing all the list and directories present inside Desktop folder"

#Command to open the above created text file containing list of all files and directories present inside Desktop folder
open DesktopListDirectories.txt