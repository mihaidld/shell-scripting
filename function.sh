#!/bin/sh
# A simple script with a function

# Function declaration
add_a_user()
{
 echo "In function body \$0 is $0, parameters are $@"
 USER=$1
 PASSWORD=$2
 shift; shift;
 
 # Having shifted twice, the rest is now comments
 echo "After two shifts in function body \$0 is $0, parameters are $@" 
 COMMENTS=$@
 echo "Adding user $USER ..."
 echo useradd -c "$COMMENTS" $USER
 echo passwd $USER $PASSWORD
 echo "Added user $USER ($COMMENTS) with password $PASSWORD"
}

###
# Main body of script starts here
###
echo "Start of script ..."

# Function calls
echo "\$0 is $0, parameters are $@"
add_a_user bob goodpassword the presenter
add_a_user fred badpassword the singer
add_a_user bilko worsepassword the role model

echo "End of script ..."
