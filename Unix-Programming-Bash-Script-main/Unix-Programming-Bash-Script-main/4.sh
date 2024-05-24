#!/bin/sh

grep "manager" emp.lst > temp

while read line 
do
        echo $line > temporary
        v=$(cut -d ' ' -f 5 temporary)

        if [ $v -gt 6000 ]
        then
                cut -d ' ' -f 1,2 temporary
        fi
done < temp

# Output:-
# emp2 1/2/2003
# emp3 1/3/2003
