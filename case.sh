#!/bin/sh
echo "Please talk to me ..."
while :
do
read input_text
  case $input_text in
	Hello)		
		echo "Hello yourself"
		;;
	Bye)		
		echo "See you again"
		break
		;;
	*)		
		echo "Sorry I don't understand"
		;;
  esac
done
echo
echo "That's all folks!"
