#!/bin/bash

#Begin!!!

printf "\nCommand Process Monitoring!!!\n\n"

read -n 1 -s -r -p "Press any key to continue..."

printf "\n\n"

status=$?

read -p "Enter command: " command

echo -e "\nMonitoring ${command}:\n"

top | grep $command

status=$?

[ $status -eq 0 ] && echo -e "\nCommand successful!!!" || echo "Failed!!!"

#End!!!
