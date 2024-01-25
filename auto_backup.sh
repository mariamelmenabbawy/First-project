#!/bin/bash

backup_source="home/"
backup_dist=$1
time=$(date)
rsync -av --delete $HOME "$1"
echo "Successful backup and last backup was in $time"
