#!/bin/sh
echo "What is your name [`whoami`]? \c"
read MY_NAME
echo "Hello ${MY_NAME:-`whoami`} - hope you're well."
echo `p=5 && echo "p is $p"`
echo "p is $p"
echo "Name is $MY_NAME"
echo "Who is your friend?"
read FRIEND
echo "Your friend is ${FRIEND:=John Doe}"
echo "Friend is $FRIEND"
