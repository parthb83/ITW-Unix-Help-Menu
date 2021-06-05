#!/bin/bash

clear

echo "Author: Parth Bansal"
echo "Email-ID: parth.bansal.cse20@itbhu.ac.in"
echo ""

echo -e "\t  _______GUIDE FOR USING THE myhelp SCRIPT______"
echo ""

echo -e "file \t Performs file management operations like display contents and size of files along with removing, copy and listing."
echo -e "     \t This section uses the commands like cat, du, rm, cp and ls."
echo ""

echo -e "text \t Performs text processing operations like searching contents, counting stats (lines, words and characters) and showing line difference of two files."
echo -e "     \t This section uses the commands like grep, wc and diff."
echo ""

echo -e "status \t Shows system status like current date time, disk usage, local and environmental variable and process status information."
echo -e "       \t This section uses the commands like date, printenv, df and ps."
echo ""

echo -e "help \t Shows this help section."
echo ""
echo ""

echo -e "\t _______Press any key to go back to main program_______"
read key
clear
bash myhelp.sh 