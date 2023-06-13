function output {
    echo -e "${arr[0]}${arr[1]}HOSTNAME${NORMAL} = ${arr[2]}${arr[3]}$HOSTNAME${NORMAL}"
    echo -e "${arr[0]}${arr[1]}TIMEZONE${NORMAL} = ${arr[2]}${arr[3]}$(timedatectl | grep "Time zone" | cut -d ':' -f 2 | \
    sed 's/(//' | sed 's/)//' | sed 's/,//' | sed 's/0//' | sed 's/00//' | sed 's/ //')${NORMAL}"
    echo -e "${arr[0]}${arr[1]}USER${NORMAL} = ${arr[2]}${arr[3]}$USER${NORMAL}"
    echo -e "${arr[0]}${arr[1]}OS${NORMAL} = ${arr[2]}${arr[3]}$(uname) $(cat /etc/issue | cut -d '\' -f 1)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}DATE${NORMAL} = ${arr[2]}${arr[3]}$(date +"%d %b %G %T")${NORMAL}"
    echo -e "${arr[0]}${arr[1]}UPTIME${NORMAL} = ${arr[2]}${arr[3]}$(uptime -p)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}UPTIME_SEC${NORMAL} = ${arr[2]}${arr[3]}$(cat /proc/uptime | cut -d ' ' -f 1)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}IP${NORMAL} = ${arr[2]}${arr[3]}$(hostname -I)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}MASK${NORMAL} = ${arr[2]}${arr[3]}$(ifconfig | grep -m1 "netmask" | awk '{split($4,a); print a[1]}')${NORMAL}"
    echo -e "${arr[0]}${arr[1]}GATEWAY${NORMAL} = ${arr[2]}${arr[3]}$(ip route | grep default | awk '{split($3,a); print a[1]}')${NORMAL}"
    echo -e "${arr[0]}${arr[1]}RAM_TOTAL${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=3; $(free | grep "Mem" | awk '{split($2,a); print a[1]}')/1048576" | bc)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}RAM_USED${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=3; $(free | grep "Mem" | awk '{split($3,a); print a[1]}')/1048576" | bc)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}RAM_FREE${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=3; $(free | grep "Mem" | awk '{split($4,a); print a[1]}')/1048576" | bc)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}SPACE_ROOT${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=2; $(df / | grep / | awk '{split($2,a); print a[1]}')/1024" | bc)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}SPACE_ROOT_USED${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=2; $(df / | grep / | awk '{split($3,a); print a[1]}')/1024" | bc)${NORMAL}"
    echo -e "${arr[0]}${arr[1]}SPACE_ROOT_FREE${NORMAL} = ${arr[2]}${arr[3]}$(echo "scale=2; $(df / | grep / | awk '{split($4,a); print a[1]}')/1024"| bc)${NORMAL}"
}