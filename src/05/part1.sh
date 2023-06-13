function part1 {
    echo -e "Total number of folders (including all nested ones) = $(sudo ls $directory -lR | grep "^d" | wc -l)"
    echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):"

    num=1
    for (( i=2; i<7 && i<=(( $(sudo ls $directory -lR | grep -c "^d") + 1 )); i++ ))
        do
        echo -e "$num - $(sudo du -h $directory | sort -n -r | head -$i | tail -1 | awk '{split($2,a); print a[1]}'), \
$(sudo du -h $directory | sort -n -r | head -$i | tail -1 | awk '{split($1,a); print a[1]}')"
        (( num+=1 ))
        done
}