function color {
for (( i=0; i<4; i++))
    do
    if [ $i -eq 1 ] || [ $i -eq 3 ]; then
        if [ ${arr[i]} -eq 0 ]; then
            arr[i]=$WHITE
            arr_name_col[i]="white"
        elif [ ${arr[i]} -eq 1 ]; then
            arr[i]=$WHITE
            arr_name_col[i]="white"
        elif [ ${arr[i]} -eq 2 ]; then
            arr[i]=$RED
            arr_name_col[i]="red"
        elif [ ${arr[i]} -eq 3 ]; then
            arr[i]=$GREEN
            arr_name_col[i]="green"
        elif [ ${arr[i]} -eq 4 ]; then
            arr[i]=$BLUE
            arr_name_col[i]="blue"
        elif [ ${arr[i]} -eq 5 ]; then
            arr[i]=$PURPLE
            arr_name_col[i]="purple"
        elif [ ${arr[i]} -eq 6 ]; then
            arr[i]=$BLACK
            arr_name_col[i]="black"
        fi
    else
        if [ ${arr[i]} -eq 0 ]; then
            arr[i]=$BGBLACK
            arr_name_col[i]="black"
        elif [ ${arr[i]} -eq 1 ]; then
            arr[i]=$BGWHITE
            arr_name_col[i]="white"
        elif [ ${arr[i]} -eq 2 ]; then
            arr[i]=$BGRED
            arr_name_col[i]="red"
        elif [ ${arr[i]} -eq 3 ]; then
            arr[i]=$BGGREEN
            arr_name_col[i]="green"
        elif [ ${arr[i]} -eq 4 ]; then
            arr[i]=$BGBLUE
            arr_name_col[i]="blue"
        elif [ ${arr[i]} -eq 5 ]; then
            arr[i]=$BGPURPLE
            arr_name_col[i]="purple"
        elif [ ${arr[i]} -eq 6 ]; then
            arr[i]=$BGBLACK
            arr_name_col[i]="black"
        fi
    fi
    done
}