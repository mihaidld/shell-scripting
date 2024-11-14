#!/bin/sh
grep "^${1}:" /etc/passwd
echo "exit code $? for don't throw" 
 
grep "^${1}:" /etc/passwd &> /dev/null
echo "exit code $? for throw stout and sterr"

grep "^${1}:" /etc/passwd > /dev/null
echo "exit code $? for throw stout"

grep "^${1}:" /etc/passwd 2> /dev/null
echo "exit code $? for throw stderr"
