function check {
if ! [ -d "$directory" ]; then
    echo "ошибка: каталога не существует"
    exit
fi
}