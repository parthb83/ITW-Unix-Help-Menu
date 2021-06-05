#!/bin/bash

echo "       SYSTEM STATUS COMMANDS"
echo ""
echo "1 -- Display the current date and time"
echo "2 -- Current disk usage"
echo "3 -- List current local and environmental"
echo "4 -- Display process status information"

if [ "$1" == "1" ]
then
    echo "5 -- Exit Program"
else
    echo "5 -- Quit -- Return to Main Menu"
fi

echo ""
echo -n "       Enter your choice: "
read choice
echo ""

while [ 1 ]
do
    while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 -a $choice -ne 5 ]
    do
        echo -n "       Enter a valid choice: "
        read choice
        echo ""
    done

    if [ $choice -eq 1 ]
    then
        echo ""
        date +"%d/%h/%Y %R"
        echo ""
    fi

    if [ $choice -eq 2 ]
    then
        echo ""
        df | less
        echo ""
    fi

    if [ $choice -eq 3 ]
    then
        echo ""
        printenv | less
        echo ""
    fi

    if [ $choice -eq 4 ]
    then
        echo ""
        ps -e | less
        echo ""
    fi

    if [ $choice -eq 5 ]
    then
        if [ "$1" == "1" ]
        then
            exit 1
        else
            clear
            bash myhelp.sh
        fi
    fi

    echo ""
    echo -n "       Enter your choice: "
    read choice
    echo ""
done