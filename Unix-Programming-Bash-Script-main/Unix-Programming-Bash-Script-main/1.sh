#!/bin/sh

if [ $# -ne 2 ]
then
        echo "Arguement count doesnot match"
        exit
fi

if [ ! -f $1 ]
then
        echo "File $1 doesnot exists"
        exit
fi

if [ ! -f $2 ]
then
        echo "File $2 doesnot exists"
        exit 
fi

echo "\nCompare Command"
cmp $1 $2
if [ $? -eq 0 ]
then
        echo "Compare Command Executed successfully"
fi

echo "\nCommon Command"
comm $1 $2
if [ $? -eq 0 ]
then
        echo "Common command executed successfully"
fi

echo "\nDifference Command"
diff $1 $2
if [ $? -eq 0 ]
then
        echo "Difference Command executed"
fi

echo "\nFive largest files in current directory are "
ls -l | sort -n -k 5 | tail -5


# Output :-
# Compare Command
# fruit.txt fruit1.txt differ: byte 16, line 3
# Compare Command Executed successfully

# Common Command
#                 Apple
#                 Banana
# Cherries
#                 Dragon Fruit
#                 Elderberry
#         Grapes
#                 Guava
# Common command executed successfully

# Difference Command
# 3d2
# < Cherries
# 5a5
# > Grapes
# Difference Command executed

# Five largest files in current directory are
# -rwxr-xr-x 1 hp 197121 241 Jul  8 19:27 5.sh
# -rwxr-xr-x 1 hp 197121 253 Jul  8 19:06 8.sh
# -rwxr-xr-x 1 hp 197121 322 Jul  8 22:17 9.sh
# -rwxr-xr-x 1 hp 197121 620 Jul  8 19:06 1.sh
# -rwxr-xr-x 1 hp 197121 885 Jul  8 23:54 11.sh
