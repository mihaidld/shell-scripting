#!/bin/bash -x

# From /sbin/start_udev by Greg KH (GPL v2 only)
# Does $1 contain $2 ?
strstr() {
 # Parameter expansion https://wiki.bash-hackers.org/syntax/pe
 # [ "${1#*$2}" = "$1" ] && return 1
 [ "${1%*$2*}" = "$1" ] && return 1
  return 0
}

NEEDLE=low
HAYSTACK=helloworld

strstr $HAYSTACK $NEEDLE && echo "$HAYSTACK contains $NEEDLE" || \
     echo "$HAYSTACK does not contain $NEEDLE"
# "helloworld" does contain "hello"

NEEDLE=world
strstr $HAYSTACK $NEEDLE && echo "$HAYSTACK contains $NEEDLE" || \
     echo "$HAYSTACK does not contain $NEEDLE"
# "helloworld" doesn't contain "goodbye"

NEEDLE=hello
strstr $HAYSTACK $NEEDLE && echo "$HAYSTACK contains $NEEDLE" || \
      echo "$HAYSTACK does not contain $NEEDLE"
 # "helloworld" doesn't contain "goodbye"

NEEDLE=needle
strstr $HAYSTACK $NEEDLE && echo "$HAYSTACK contains $NEEDLE" || \
       echo "$HAYSTACK does not contain $NEEDLE"
# "helloworld" doesn't contain "goodbye"
