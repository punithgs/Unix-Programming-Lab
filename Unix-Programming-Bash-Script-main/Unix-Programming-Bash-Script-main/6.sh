#!/bin/sh

echo "Enter the User login account name"
read l

cd $HOME 
ls > list1.txt

grep "$l" list1.txt

if [ $? -eq 0 ]
then
        echo "User Exists"
else 
        echo "User Not Exists"
fi

# Output:-
# Enter the User login account name
# abc
# User Not exists
