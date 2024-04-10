#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Error: Four arguments are required."
    exit 1
fi

re='^[1-6]$'
for arg in "$@"; do
    if ! [[ $arg =~ $re ]]; then
        echo "Error: All arguments must be numbers in the interval from 1 to 6."
        exit 1
    fi
done

source get_color.sh
source print_info.sh
source get_info.sh
source check_bg_and_font.sh

name_bg_color=$1
name_font_color=$2
value_bg_color=$3
value_font_color=$4

check_bg_and_font_eq

name_bg_color=$(get_color_bg "$name_bg_color")
name_font_color=$(get_color_font "$name_font_color")
value_bg_color=$(get_color_bg "$value_bg_color")
value_font_color=$(get_color_font "$value_font_color")

get_sys_info
get_network_info
get_mem_info
get_disk_info

print_info "$name_bg_color" "$name_font_color" "$value_bg_color" "$value_font_color"
