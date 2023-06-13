function output {
    echo HOSTNAME = $HOSTNAME
    echo TIMEZONE =$(timedatectl | grep "Time zone" | cut -d ':' -f 2 | \
    sed 's/(//' | sed 's/)//' | sed 's/,//')
    echo USER = $USER
    echo OS = $(uname) $(cat /etc/issue | cut -d '\' -f 1)
    echo DATE = $(date +"%d %b %G %T")
    echo UPTIME = $(uptime -p)
    echo UPTIME_SEC = $(cat /proc/uptime | cut -d ' ' -f 1)
    echo IP = $(hostname -I)
    echo MASK = $(ifconfig | grep -m1 "netmask" | awk '{split($4,a); print a[1]}')
    echo MASK = $(ifconfig | grep -m1 "netmask" | awk '{split($4,a); print a[1]}')
    echo GATEWAY = $(ip route | grep default | awk '{split($3,a); print a[1]}')
    echo RAM_TOTAL = $(echo "scale=3; $(free | grep "Mem" | awk '{split($2,a); print a[1]}')/1048576" | bc)
    echo RAM_USED = $(echo "scale=3; $(free | grep "Mem" | awk '{split($3,a); print a[1]}')/1048576" | bc)
    echo RAM_FREE = $(echo "scale=3; $(free | grep "Mem" | awk '{split($4,a); print a[1]}')/1048576" | bc)
    echo SPACE_ROOT = $(echo "scale=2; $(df / | grep / | awk '{split($2,a); print a[1]}')/1024" | bc)
    echo SPACE_ROOT_USED = $(echo "scale=2; $(df / | grep / | awk '{split($3,a); print a[1]}')/1024" | bc)
    echo SPACE_ROOT_FREE = $(echo "scale=2; $(df / | grep / | awk '{split($4,a); print a[1]}')/1024"| bc)
}
