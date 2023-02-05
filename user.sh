#!/bin/bash

#Question 1

#Command to get current date and time
echo "Current date and time is:  $(date)"

#Command to get only date
echo "Date is: $(date +%F)"

#Command to get only time
echo "Time is: $(date +%T)"

#Command to get username
echo "Username: $(whoami)"

#Command to get Home Directory
echo "Home Directory: $HOME"

#Command to get users current working directory
echo "Current Working Directory: $(pwd)"
