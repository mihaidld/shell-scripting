#!/bin/sh
echo "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ];then
 # If grep found a non-digit character 
 # then it's not an integer
 echo "Sorry, wanted a positive integer"
else
 # grep found only digits
 # we can safely do a test on it 
 if [ "$X" -eq "7" ];then 
  echo "You entered the magic number!"
 else
  echo "Try again"
 fi
fi
