#!/bin/sh
echo What is your name?
read MY_NAME
echo "Hello $MY_NAME"
echo "I will create you a file called ${MY_NAME}_file"
touch "${MY_NAME}_file"
