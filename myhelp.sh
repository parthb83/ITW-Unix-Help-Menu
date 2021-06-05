#!/bin/bash

clear

isexpert=1
if [ "$#" -eq "0" ]
then 
    isexpert=0

    echo "       UNIX HELP MAIN MENU"
    echo ""
    echo "1 -- File and Directory Management Commands"
    echo "2 -- Text Processing Commands"
    echo "3 -- System Status Commands"
    echo "4 -- Exit"
    echo ""
    echo -n "        Enter your choice: "
    read choice

    while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 ]
    do 
        echo -n "        Enter a valid choice: "
        read choice
    done

    if [ $choice -eq 1 ]
    then
        clear
        bash file_management.sh $isexpert
    fi

    if [ $choice -eq 2 ]
    then
        clear
        bash text_processing.sh $isexpert
    fi

    if [ $choice -eq 3 ]
    then
        clear
        bash system_status.sh $isexpert
    fi

    if [ $choice -eq 4 ]
    then
        exit 1
    fi

elif [ "$1" != "help" -a "$1" != "status" -a "$1" != "text" -a "$1" != "file" ]
then
    echo "Enter a valid arguement"
    exit 1

elif [ "$1" == "file" ]
then    
    clear
    bash file_management.sh $isexpert

elif [ "$1" == "text" ]
then 
    clear
    bash text_processing.sh $isexpert

elif [ "$1" == "status" ]
then
    clear
    bash system_status.sh $isexpert

elif [ "$1" == "help" ]
then
    clear
    bash help.sh
fi