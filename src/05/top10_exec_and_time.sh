function top10_exec_and_time {
    echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"

    for (( i=1; i<11 && i<=(( $(sudo find $directory -executable -type f -printf "%kKB %p\n" | wc -l) )); i++ ))
    do
    echo -e "$i - $(sudo find $directory -executable -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 2 -d ' '), $(sudo find $directory -executable -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 1 -d ' '),\
 $(shasum $(sudo find $directory -executable -type f -printf "%kKB %p\n" | sort -n -r | head -$i | tail -1 | cut -f 2 -d ' ') | cut -f 1 -d ' ')"

    done

    echo -e "Script execution time (in seconds) = $(($(date +%s)-$time))"
}
