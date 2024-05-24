#!/bin/sh

y=1

while [ $y -eq 1 ]
do
         echo "Enter the Item Code"
         read itemcode

         echo "Enter the Item"
         read item

         echo $itemcode $item >> item.txt

         echo "Enter 1 to continue or 0 to discontinue"
         read y
done

cat item.txt

# Output:-
# Enter the Item Code
# 0101
# Enter the Item
# Item1
# Enter 1 to continue or 0 to discontinue
# 1
# Enter the Item Code
# 0102
# Enter the Item
# Item 2
# Enter 1 to continue or 0 to discontinue
# 0
# 0101 Item1
# 0102 Item 2
