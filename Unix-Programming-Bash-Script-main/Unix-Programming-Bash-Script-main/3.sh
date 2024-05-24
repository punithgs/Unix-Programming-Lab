#!/bin/sh

for file in *
do
    if [ -f "$file" ]
    then
        permission=$(stat -c '%A' "$file")
        
        link_exists="No"
        link_count=$(stat -c '%h' "$file")

        if [ $link_count -gt 0 ]
        then
            link_exists="Yes"
        fi

        size=$(stat -c '%s' "$file")

        echo "File Name: $file, Permission: $permission, Link existence: $link_exists, Size: $size bytes, Link count: $link_count"
    fi
done

# Output :-
# File Name: 3.sh, Permission: -rwxr-xr-x, Link existence: Yes, Size: 449 bytes, Link count: 1
