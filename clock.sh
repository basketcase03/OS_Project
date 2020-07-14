#!/bin/bash

# LINUX SHELL SCRIPTING

# START-------------------------------------------------------------------------->


# Checking the time format entered by the user

if [[ $1 == "1" ]]              # For 24 hour format
then
	format=T
elif [[ $1 == "2" ]]            # For 12 hour format
	then
	format=r
else
	echo "Please provide valid argument (1 to use 24 hour format and 2 to use 12 hour format)"    #Invalid Argument or No Argument
	exit 1
fi

echo "Digital Clock Running...."
echo "To stop this clock Execute ps command and then use kill {PID} command"

 while sleep 1;                             # Delay for 1 second 

     do tput sc;                            # Save the Current cursor position
                              
     tput cup 0 $(($(tput cols)-15));       # Move cursor to row 0 and column 15 from the right side
           
     TIME_=$(date +"%"$format)              # Check current date of the system
               
     echo $TIME_                            # Output Current date in format provided by the user
                            
     tput rc;                               # Restore the saved cursor position
                               
 done &
 
# END---------------------------------------------------------------------------->
