#!/bin/bash


# Verify expected number of arguments are provided to the script
if [ $# -lt 2 ]; then
    echo "Usage: $0 <arg1> <arg2>"
    exit 1
fi

# Verify full path to a directory is provided
if [ -z $1 ]; then
    echo "Please provide full path to a directory"
    exit 1
fi

# Verify search string is provided
if [ -z $2 ]; then
    echo "Please provide a text string that needs to be searched"
    exit 1
fi

# Verify the directory exists
if [ -d "$1" ]; then
    filesdir=$1
else
    echo "Directory $1 does not exit"
    exit 1
fi

searchstr=$2

echo "The number of files are $( grep -lr $searchstr $filesdir | wc -l ) and the number of matching lines are $( grep -r $searchstr $filesdir | wc -l )"

