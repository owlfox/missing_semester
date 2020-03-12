#!env bash

echo "Starting program at $(date)" # Date will be substituted
echo "Running program $0 with $# arguments with pid $$"

count=0
log_path="/tmp/hehe"
mkdir -p $log_path
rm $log_path/*.log > /dev/null 2> /dev/null
while true; do
    ./$1 >> $log_path/std.log 2> $log_path/err.log
    if [[ $? -ne 0 ]]; then
        break
    fi
    ((count++))
done

echo count: $count
echo logs:
cat $log_path/std.log
echo errs:
cat $log_path/err.log
