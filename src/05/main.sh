. ./check.sh
. ./part1.sh
. ./part2.sh
. ./top10_files.sh
. ./top10_exec_and_time.sh

time=$(date +%s)
directory=$1
check
part1
part2
top10_files
top10_exec_and_time
