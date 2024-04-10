#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Directory not specified"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
    echo "Error: The specified path is not a directory."
    exit 1
fi

source get_info.sh
source print_info.sh
source sec_func.sh

start_time=$(date +%s.%N)

get_folders_info
get_files_count
get_top_10_files

end_time=$(date +%s.%N)
execution_time=$(echo "$end_time - $start_time" | bc)

print_folders_info
print_files_count_info
print_top_10_files

echo "Script execution time (in seconds) = $execution_time"
