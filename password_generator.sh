#!/bin/bash

echo "------Password Generator-----"
read -p "Enter the length : " length
for i in {1..20..1}
do
openssl rand -base64 63 | cut -c1-$length
done
