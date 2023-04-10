#!/bin/bash

# Define variables
URL="https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv"
FILENAME="owid-covid-data.csv"
DIRNAME="$(date +'%Y-%m-%d_%H-%M-%S')"

# Retrieve data file
curl -o $FILENAME $URL

# Create timestamped directory
mkdir $DIRNAME

# Move data file to directory
mv $FILENAME $DIRNAME

# Delete old data copies
find . -type d -name "[0-9]*" -mtime +3 -exec rm -r {} \;

#task done
echo "Task done!"
