function mass {
    bg1=$(grep "column1_background" pattern.conf | awk 'BEGIN{FS="="} {print $2}')
    f1=$(grep "column1_font_color" pattern.conf | awk 'BEGIN{FS="="} {print $2}')
    bg2=$(grep "column2_background" pattern.conf | awk 'BEGIN{FS="="} {print $2}')
    f2=$(grep "column2_font_color" pattern.conf | awk 'BEGIN{FS="="} {print $2}')
    if ! [ -z $bg1 ]; then
        arr[0]=$bg1
    else
        bg1="default"
    fi
    if ! [ -z $bg2 ]; then
        arr[2]=$bg2
    else
        bg2="default"
    fi
    if ! [ -z $f1 ]; then
        arr[1]=$f1
    else
        f1="default"
    fi
    if ! [ -z $f2 ]; then
        arr[3]=$f2
    else
        f2="default"
    fi
}