#!/bin/sh

check_errs()
{
 # Param 1 is exit code following command, 
 # param 2 is error message in that case
 if [ "${1}" -ne "0" ]; then
  echo "ERROR code #${1} : ${2}"
  exit ${1}
 fi
}

### main script ###
grep "^${1}:" /etc/passwd &> /dev/null
check_errs $? "User ${1} not found in etc/passwd"
 
USERNAME=`grep "^${1}:" /etc/passwd | cut -d ":" -f 1`
check_errs $? "cut returned an error"

echo "USERNAME: ${USERNAME}"
check_errs $? "echo returned an error - very strange!"
