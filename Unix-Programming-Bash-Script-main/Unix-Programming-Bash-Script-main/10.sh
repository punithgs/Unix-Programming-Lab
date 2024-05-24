#!/bin/sh

echo "Enter the directory path"
read path

echo "Enter the pattern to be searched"
read pattern

cd $path

ls > just.txt

for word in `cat just.txt`
do
        grep "$pattern" $word
done

# Output:-
# Enter the directory path
# /home/linux/unix
# Enter to pattern to be searched
# sh
# #! /bin/sh
# #! /bin/sh
# #! /bin/sh
# #!/bin/sh
# #!/bin/sh
# #!/bin/sh
# #! /bin/sh
# #!/bin/sh
# #! /bin/sh
# #! /bin/sh
# 1.sh
# 10.sh
# 11.sh
# 2.sh
# 3.sh
# 4.sh
# 5.sh
# 6.sh
# 7.sh
# 8.sh
# 9.sh
# bash_reference_file
