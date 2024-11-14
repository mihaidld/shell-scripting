#!/bin/sh
INPUT=bye
if [ "$INPUT" = "bye" ]
then
 echo "Good bye"
elif [ "$INPUT" = "hello" ]
then
 echo "Hello to you"
else
 echo "Do not understand: $INPUT"
fi

INPUT=hello
if [ "$INPUT" = "bye" ]
then
 echo "Good bye"
elif [ "$INPUT" = "hello" ]
then
 echo "Hello to you"
else
 echo "Do not understand: $INPUT"
fi

INPUT=holla
if [ "$INPUT" = "bye" ]
then
 echo "Good bye"
elif [ "$INPUT" = "hello" ]
then
 echo "Hello to you"
else
 echo "Do not understand: $INPUT"
fi
