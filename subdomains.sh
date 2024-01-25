#!/bin/bash

if [ -z $1 ]
then
	echo "Failed"
	exit
fi

output=sub_domains.txt

assetfinder --subs-only -d $1 -o $output
cat $output
amass enum -d $1 -o "$output.mass"
subfinder -d $1 >> "$output.subfinder"
cat "$output.mass" "$output.subfinder" >> "$output.mass"
sort "$output.mass" -o "$output.mass"
echo " The unique sub domains :"
echo "****************************"
cat "$output.mass"
count=$(cat $new|wc -l)
echo "total unique sub domains = " $count
