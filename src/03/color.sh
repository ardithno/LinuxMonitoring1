function color {
for (( i=0; i<4; i++))
    do
    if [ $i -eq 1 ] || [ $i -eq 3 ]; then
        if [ ${arr[i]} -eq 1 ]; then
            arr[i]=$WHITE
        elif [ ${arr[i]} -eq 2 ]; then
            arr[i]=$RED
        elif [ ${arr[i]} -eq 3 ]; then
            arr[i]=$GREEN
        elif [ ${arr[i]} -eq 4 ]; then
            arr[i]=$BLUE
        elif [ ${arr[i]} -eq 5 ]; then
            arr[i]=$PURPLE
        elif [ ${arr[i]} -eq 6 ]; then
            arr[i]=$BLACK
        fi
    else
        if [ ${arr[i]} -eq 1 ]; then
            arr[i]=$BGWHITE
        elif [ ${arr[i]} -eq 2 ]; then
            arr[i]=$BGRED
        elif [ ${arr[i]} -eq 3 ]; then
            arr[i]=$BGGREEN
        elif [ ${arr[i]} -eq 4 ]; then
            arr[i]=$BGBLUE
        elif [ ${arr[i]} -eq 5 ]; then
            arr[i]=$BGPURPLE
        elif [ ${arr[i]} -eq 6 ]; then
            arr[i]=$BGBLACK
        fi
    fi
    done
}