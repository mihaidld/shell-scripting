#!/bin/sh
pwd
./if.sh
echo "exit value is $?"
echo "Process identifier PID of current shell is $$"
echo "Process identifier of last background process is $!"
if [ "$?" -ne "0" ]; then
 echo "There was a problem since \
	exit value is $?"
fi

