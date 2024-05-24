#!/bin/sh

if echo $1 | egrep -q '^[0-9]+$';
then
        echo "Valid Designation code"
else
        echo "Invalid code, code must be numerical"
        exit
fi

if echo $2 | egrep -q '^[a-zA-Z]+$';
then
        echo "Valid designation description"
else 
        echo "Invalid description , description must be alphabetical"
        exit
fi

echo $1 $2 >> desig.lst
echo "Data added successfully"
cat desig.lst

# Output:-
# $ ./9.sh 0101 Desig
# Valid Designation code
# Valid designation description
# Data added successfully
# 0101 Desig
