#!/bin/bash

# Verify expected number of arguments are provided to the script
if [ $# -lt 2 ]; then
    echo "Usage $0 <arg1> <arg2>"
    exit 1
fi

# Verify the full path to a file is provided
if [ -z $1 ]; then
    echo "Please provide full path to a file"
    exit 1
fi

# Verify text string is provided
if [ -z $2 ]; then
    echo "Please provide a text string that needs to written to file"
    exit 1
fi

DIR=$(dirname "$1")

# Verify if the file exists
if [ -d "$DIR" ]; then
    echo "Directory exits"
else
    echo "Creating the directory $DIR"
    echo "$DIR"
    mkdir -p "$DIR"
fi

if [ -f "$1" ]; then
    echo "File exists"
else
    echo "Creating the file $1"
    touch "$1"
fi

echo $2 > $1

