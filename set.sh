#!/bin/sh
LOGFILE=file1.txt
echo "Adding to logfile ..."
echo "--- Environment ---" >> $LOGFILE
set >> $LOGFILE
echo "--- End of environment ---" >> $LOGFILE
