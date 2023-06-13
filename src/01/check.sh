function check {
    if [ $# -ne 1 ]; then
        echo "ошибка: неправильное количество параметров"
    elif [[ $1 =~ $re ]]; then
        echo "ошибка: введено число"
    else
        echo $1
fi
}