!/bin/sh
. ./common.lib

if [ -n $1 ] && [ -n $2 ]; then
 echo $STD_MSG
 rename $1 $2
fi
