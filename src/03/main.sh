. ./check.sh
. ./check_net_tools.sh
. ./color.sh
. ./output.sh
. ./param.sh

chmod +x *.sh
check_net_tools
check ${arr[*]}
color
output

