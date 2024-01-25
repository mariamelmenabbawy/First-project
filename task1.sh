#!/bin/bash

if [ $1 ]
then
	echo "success"
	echo 
else
	echo" ERROR ! , please enter the path of file "
	exit
fi
if [ ! -e $1 ]
then
	echo"NOT FOUND"
	exit
fi
echo "  * " $1" information  *  "

if [ -d $1 ]
then
	echo "Type : directory"
elif [ -f $1 ]
then
	echo "Type : file"
fi
echo "------------------------------------------------------------------------------------------"
echo " Permissions "
ls -la $1 | cut -d " " -f1
echo "------------------------------------------------------------------------------------------"

echo " Size "
ls -la $1 | cut -d " " -f5
echo "------------------------------------------------------------------------------------------"
echo "The content of " $1 ":"
echo " "
cat $1
