. ./check.sh
. ./check_net_tools.sh
. ./color.sh
. ./output.sh
. ./param.sh
. ./mass.sh

chmod +x *.sh
check_net_tools
mass
check ${arr[*]}
color
output
