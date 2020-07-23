#!/bin/bash

# LINUX SHELL SCRIPTING


# Checking the time format entered by the user

if [[ $1 == "1" ]]              # For 24 hour format
then
	format=T
elif [[ $1 == "2" ]]            # For 12 hour format
	then
	format=r
else
	printf "%s\n" "Please provide valid argument (1 to use 24 hour format and 2 to use 12 hour format)"    #Invalid Argument or No Argument
	exit 1
fi

printf "%s\n" "Digital Clock Running...."
printf "%s\n" "To stop this clock, execute ps command and then use kill {PID} command"

#Using infinite for loop------------->


for (( ; ; ))

    do tput sc;                            # Save the Current cursor position
                              
    tput cup 0 $(($(tput cols)-15));       # Move cursor to row 0 and column 15 from the right side
           
    TIME_=$(date +"%"$format)              # Check current date of the system in format provided by the user.
               
    echo $TIME_                            # Output Current date.
                            
    tput rc;                               # Restore the saved cursor position.

    sleep 1                                # Delay for 1 second

done &
