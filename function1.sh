#!/bin/sh

add_a_user()
{
 USER=$1
 PASSWORD=$2
 shift; shift; 
 COMMENTS=$@
 
 # make external calls and check exit codes 
 useradd -c "$COMMENTS" $USER
 if [ "$?" -ne "0" ]; then
  echo "User add failed"
  return 1
 fi 

 passwd $USER $PASSWORD
  if [ "$?" -ne "0" ]; then
   echo "Setting password failed"
   return 2
  fi 

echo "Added user $USER ($COMMENTS) with password $PASSWORD"
}

## Main body of script starts here
add_a_user bob goodpassword the presenter

# set variable to store exit code after calling function
ADDUSER_RETURN_CODE=$?
 if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
  echo "Something went wrong with useradd"
 elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then
  echo "Something went wrong with setting password"
 else
  echo "User added to the system"
 fi
