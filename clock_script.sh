#!/bin/sh

#Prints hour(00...23)
# For hour(01...12) use %l inplace of %H
DATE=$(date +"%s")
while :
do
        NEWDATE=$(date +"%s")
        if [ $NEWDATE -eq $DATE ]; then
                continue
        fi
                echo  "\033[s\c"
                WINDOW_X=$(tput cols)
                TEXT_SIZE=8
                COLUMN=$(( WINDOW_X - TEXT_SIZE ))
                tput cup 0 ${COLUMN}
                echo  "$(date +"%H:%M:%S")\c"
                echo  "\033[u\c"

		DATE=$NEWDATE
done
# Can be modified to remove the prev instances of the printed thing

