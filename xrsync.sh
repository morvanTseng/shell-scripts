#!/bin/bash

# this script is for the purpose of sync files on different machines

# user

user=$(whoami)

# synced  file

file_path=$1

#hosts

hosts=$2

# destination_path

destination_path=$3


cat $hosts | while read host
do
    echo "----------$host---------"
    rsync -rvl ${file_path} ${user}@${host}:$destination_path
    echo "----------done---------"
done
