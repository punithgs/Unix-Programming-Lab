#!/bin/sh

echo "1.Who 2.Whoami 3.Date 4.ls -l 5.exit"

while [ true ]
do
        echo "\nEnter Choice"
        read choice

        case $choice in 
                1)who;;
                2)whoami;;
                3)date;;
                4)ls -l;;
                5)exit;;
                *)echo "Invalid choice"
        esac
done

# Output:-
# 1.Who 2.Whoami 3.Date 4.ls -l 5.exit

# Enter choice
# 2
# hp

# Enter choice
# 3
# Mon, Jul 10, 2023 11:29:19 PM

# Enter choice
# 4
# total 26
# -rwxr-xr-x 1 hp 197121  620 Jul  8 19:06 1.sh
# -rwxr-xr-x 1 hp 197121  179 Jul  8 22:30 10.sh
# -rwxr-xr-x 1 hp 197121  885 Jul  8 23:54 11.sh
# -rwxr-xr-x 1 hp 197121  185 Jul 10 23:00 2.sh
# -rw-r--r-- 1 hp 197121   29 Jul  8 19:11 3.sh
# -rwxr-xr-x 1 hp 197121  190 Jul  8 19:19 4.sh
# -rwxr-xr-x 1 hp 197121  240 Jul 10 23:13 5.sh
# -rwxr-xr-x 1 hp 197121  196 Jul  8 19:35 6.sh
# -rwxr-xr-x 1 hp 197121  205 Jul  8 19:06 7.sh
# -rwxr-xr-x 1 hp 197121  253 Jul  8 19:06 8.sh
# -rwxr-xr-x 1 hp 197121  322 Jul  8 22:17 9.sh
# drwxr-xr-x 1 hp 197121    0 Jul 10 23:14 bash_reference_file

# Enter the choice
# 5
