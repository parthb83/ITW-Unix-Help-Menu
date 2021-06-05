#!/bin/bash

echo "       FILE AND DIRECTORY MANAGEMENT COMMANDS"
echo ""
echo "1 -- Display the contents of a file"
echo "2 -- Remove a file"
echo "3 -- Copy a file"
echo "4 -- List a file"
echo "5 -- Size of a file"

if [ "$1" == "1" ]
then
    echo "6 -- Exit Program"
else
    echo "6 -- Quit -- Return to main Menu"
fi

echo ""
echo -n "       Enter your choice: "
read choice
echo ""

while [ 1 ]
do
    while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 -a $choice -ne 5 -a $choice -ne 6 ]
    do
        echo -n "       Enter a valid choice: "
        read choice
        echo ""
    done

    if [ $choice -eq 1 ]
    then 
        echo -n "Enter the path of the file with respect to home directory which you want to display: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        echo -e "$(cat $file_path)" | less
    fi

    if [ $choice -eq 2 ]
    then
        echo -n "Enter the path of the file with respect to home directory which you want to remove: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        rm $file
        echo "File removed."
    fi

    if [ $choice -eq 3 ]
    then
        echo -n "Enter the path of the file with respect to home directory which you want to copy: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        echo -n "Enter the path of the destination directory to which you want to copy the file: "
        read dir_path
        echo ""

        while [ ! -d "$dir_path" ]
        do
            echo -n "Invalid directory path. Enter a valid directory path: "
            read dir_path
        done

        cp $file_path $dir_path
        echo "File successfully copied to desired destination."
    fi

    if [ $choice -eq 4 ]
    then 
        echo -n "Enter the path of the file with respect to home directory which you want to list: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        ls -l $file_path | less
    fi

    if [ $choice -eq 5 ]
    then
        echo -n "Enter the path of the file with respect to home directory which you want to find the size of: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        du -h $file_path | less
    fi

    if [ $choice -eq 6 ]
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
