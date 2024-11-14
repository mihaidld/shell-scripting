#!/bin/sh
grep "^${1}:" /etc/passwd &> /dev/null
EXITCODE=$?
if [ "$EXITCODE" -ne "0" ]; then
 echo "Sorry cannot find user ${1} in /etc/passwd"
 exit 1
fi

USERNAME=`grep "^${1}:" /etc/passwd | cut -d ":" -f 1`
NAME=`grep "^${1}:" /etc/passwd | cut -d ":" -f 5`
HOMEDIR=`grep "^${1}:" /etc/passwd | cut -d ":" -f 6`

echo "USERNAME: $USERNAME"
echo "NAME: $NAME"
echo "HOMEDIR: $HOMEDIR"
