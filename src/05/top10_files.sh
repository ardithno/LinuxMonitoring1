function top10_files {
    echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):"

    lspr="sudo ls -lhaSR $directory --block-size=K"
    
    for (( i=1; i<11 && i<=(( $(sudo ls $directory -lR | grep -c "^-") )); i++ ))
    do
    echo -e "$i - $(sudo find $directory -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 2 -d ' '), \
$(sudo find $directory -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 1 -d ' '),\
$(file $(sudo find $directory -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 2 -d ' ') | cut -f 2 -d ':' | cut -d "," -f1)"
    done
}

