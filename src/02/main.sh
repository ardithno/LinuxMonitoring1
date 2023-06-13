. ./output.sh
. ./check.sh

check
output
echo Записать данные в файл?
read x
if [ "$x" = 'Y' ] || [ "$x" = 'y' ]; then
    name=$(date +"%d_%m_%y_%H_%M_%S").status
    sudo touch $name
    chmod 777 $name
    output >> $name
fi
