#!/bin/sh -x

TODAY=`date +%j`			# The nth day of the year
CHRISTMAS=`date -j -vDecm -v25d +%j`	# Christmas is nth day this year

echo "There are $(($CHRISTMAS - $TODAY)) days left to Christmas !"
