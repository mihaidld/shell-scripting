#!/bin/sh
. ./ctrlc.lib

trap no_ctrlc SIGINT

while true
do
 echo "Sleeping"
 sleep 5
done
