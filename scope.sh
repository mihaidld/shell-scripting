#!/bin/sh

my_func()
{
 echo "I was called with params \$@: $@"
 x=2
}

# Main script starts here

echo "Script was called with params \$@: $@"
x=1
echo "x is $x"
my_func 1 2 3
echo "x is $x"
