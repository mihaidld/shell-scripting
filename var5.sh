#!/bin/sh
echo "IFS is $IFS"
old_IFS="$IFS"
IFS=:
echo "new IFS is $IFS"
echo "Please input some data separated by colons ..."
read x y z
IFS="$old_IFS"
echo "x is $x, y is $y, z is $z"
echo "Please input again separated by SPACE TAB NEWLINE ..."
read x y z
echo "x is $x, y is $y, z is $z"
