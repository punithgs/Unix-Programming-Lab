#!/bin/sh

echo "Enter the filename"
read filename

if [ ! -f $filename ]
then
        echo "File doesnot exists"
        exit
fi

echo "Enter the pattern to search"
read pattern

grep "$pattern" $filename

if [ $? -eq 0 ]
then
        echo "Command executed Successfully"
else
        echo "Command failed to execute"
fi

# Output:-
# Enter the filename
# pattern.txt
# Enter the pattern to search
# light
# The sun is a powerful celestial body that illuminates our planet and provides us with warmth and light.
# Sunlight is essential for the growth of plants through the process of photosynthesis.
# Command executed successfully

