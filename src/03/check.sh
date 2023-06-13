function check {
    if [ $# -ne 4 ]; then
    echo "ошибка: недопустимое количество параметров"
    exit
    fi
    
    for (( i=0; i<4; i++))
        do
        if ! [[ ${arr[i]} =~ $re ]]; then
            echo "ошибка: ошибка ввода"
            exit
        elif [ ${arr[i]} -lt 1 ] || [ ${arr[i]} -gt 6 ]; then
            echo "ошибка: число выходит из допустимого диапазона"
            exit
        fi
        done

    if [ ${arr[0]} -eq ${arr[1]} ] || [ ${arr[2]} -eq ${arr[3]} ]; then
        echo "ошибка: недопустимые значения(фон и текст одинаковые)"
        echo "Вызовите скрипт повторно"
        exit
    fi
}