#!/bin/sh
i=0
while [ "$#" -gt "0" ]
do
 ((i++))
 echo "i is $i"
 echo "\$# is $#"
 echo "\$@ is $@"
 echo "\$1 is $1"
 shift
done
