#!/bin/bash

echo "       TEXT PROCESSING COMMANDS"
echo ""
echo "1 -- Search a file for a pattern"
echo "2 -- Count lines, words, and characters in specified files"
echo "3 -- Display line differences between two files"

if [ $1 -eq 1 ];
    then
    echo "4 -- Exit Program"
else
    echo "4 -- Quit -- Return to Main Menu"
fi

echo ""
echo -n "       Enter your choice: "
read choice
echo ""

while [ 1 ]
do
    while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 ]
    do
        echo -n "       Enter a valid choice: "
        read choice
        echo ""
    done

    if [ $choice -eq 1 ]
    then 
        echo -n "Enter the path of the file with respect to home directory which you want to search pattern: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        echo -n "Enter the pattern you want to seach for: "
        read pattern
        grep -E $pattern $file_path | less
    fi

    if [ $choice -eq 2 ]
    then
        echo -n "Enter the path of the file with respect to home directory which you want to count lines, words and characters: "
        read file_path
        echo ""

        while [ ! -f "$file_path" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path
        done

        echo -n "Number of line: "
        wc -l $file_path | awk '{ print $1 }'
        echo ""

        echo -n "Number of words: "
        wc -w $file_path | awk '{ print $1 }'
        echo ""

        echo -n "Number of characters: "
        wc -c $file_path | awk '{ print $1 }'
        echo ""
    fi

    if [ $choice -eq 3 ]
    then
        echo -n "Enter the path of first file with respect to home directory: "
        read file_path1
        
        while [ ! -f "$file_path1" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path1
        done

        echo -n "Enter the path of second file with respect to home directory: "
        read file_path2
        
        while [ ! -f "$file_path2" ]
        do
            echo -n "Invalid file path. Enter a valid file path: "
            read file_path2
        done

        diff $file_path1 $file_path2 | less
    fi

    if [ $choice -eq 4 ]
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