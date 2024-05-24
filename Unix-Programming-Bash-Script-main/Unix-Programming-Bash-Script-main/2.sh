#!/bin/sh

cd $1
ls > list1.txt
cd ..

cd $2
ls > list2.txt
cd ..

cd $1
for word in `cat list1.txt`
do
        cd ..
        cd $2
        grep "$word" list2.txt

        if [ $? -eq 0 ]
        then
                rm $word
        fi

        cd ..
        cd $1
done

# Output: -
# ./2.sh bar1 bar2
# f1.txt
