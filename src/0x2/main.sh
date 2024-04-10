#!/bin/bash

source get_info.sh
source print_info.sh

get_sys_info
get_network_info
get_mem_info
get_disk_info
print_info

read -p "Write this information to a file: Y/N? " answer
if [[ $answer == 'y' || $answer == 'Y' ]]; then
    timestamp=$(date +'%d_%m_%Y_%H_%M_%S')

    filename="${timestamp}.status"

    print_info > "$filename"
fi