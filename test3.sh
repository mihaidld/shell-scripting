#!/bin/sh
X=0
while [ -n "$X" ]
do
 echo "Please type something in (RETURN to quit)"
 read X
 if [ -n "$X" ] ;then
  echo "You typed: $X"
 fi
done
