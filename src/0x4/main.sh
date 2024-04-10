#!/bin/bash

filename="colors.cfg"
if [ ! -f "$filename" ]; then
    echo "Error: there is no config file"
    exit 1
fi

source color_actions.sh
source print_info.sh
source get_info.sh
source read_from_file.sh
source check_params.sh

read_from_file
set_default_color

check_params "$name_bg_color" "$name_font_color" "$value_bg_color" "$value_font_color"

name_bg_color_code=$(get_color_bg "$name_bg_color")
name_font_color_code=$(get_color_font "$name_font_color")
value_bg_color_code=$(get_color_bg "$value_bg_color")
value_font_color_code=$(get_color_font "$value_font_color")

get_sys_info
get_network_info
get_mem_info
get_disk_info

print_info "$name_bg_color_code" "$name_font_color_code" "$value_bg_color_code" "$value_font_color_code"

echo

print_color_scheme
