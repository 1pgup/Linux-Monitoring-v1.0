print_info() {
    reset="\e[0m"

    local name_bg_color=$1
    local name_font_color=$2
    local value_bg_color=$3
    local value_font_color=$4

    echo -e "${name_font_color}${name_bg_color}HOSTNAME${reset} = ${value_font_color}${value_bg_color}$HOSTNAME${reset}"
    echo -e "${name_font_color}${name_bg_color}TIMEZONE${reset} = ${value_font_color}${value_bg_color}$TIMEZONE${reset}"
    echo -e "${name_font_color}${name_bg_color}USER${reset} = ${value_font_color}${value_bg_color}$USER${reset}"
    echo -e "${name_font_color}${name_bg_color}OS${reset} = ${value_font_color}${value_bg_color}$OS${reset}"
    echo -e "${name_font_color}${name_bg_color}DATE${reset} = ${value_font_color}${value_bg_color}$DATE${reset}"
    echo -e "${name_font_color}${name_bg_color}UPTIME${reset} = ${value_font_color}${value_bg_color}$UPTIME${reset}"
    echo -e "${name_font_color}${name_bg_color}UPTIME_SEC${reset} = ${value_font_color}${value_bg_color}$UPTIME_SEC sec${reset}"

    echo -e "${name_font_color}${name_bg_color}IP${reset} = ${value_font_color}${value_bg_color}$IP${reset}"
    echo -e "${name_font_color}${name_bg_color}MASK${reset} = ${value_font_color}${value_bg_color}$MASK${reset}"
    echo -e "${name_font_color}${name_bg_color}GATEWAY${reset} = ${value_font_color}${value_bg_color}$GATEWAY${reset}"

    echo -e "${name_font_color}${name_bg_color}RAM_TOTAL${reset} = ${value_font_color}${value_bg_color}$RAM_TOTAL GB${reset}"
    echo -e "${name_font_color}${name_bg_color}RAM_USED${reset} = ${value_font_color}${value_bg_color}$RAM_USED GB${reset}"
    echo -e "${name_font_color}${name_bg_color}RAM_FREE${reset} = ${value_font_color}${value_bg_color}$RAM_FREE GB${reset}"

    echo -e "${name_font_color}${name_bg_color}SPACE_ROOT${reset} = ${value_font_color}${value_bg_color}$SPACE_ROOT MB${reset}"
    echo -e "${name_font_color}${name_bg_color}SPACE_ROOT_USED${reset} = ${value_font_color}${value_bg_color}$SPACE_ROOT_USED MB${reset}"
    echo -e "${name_font_color}${name_bg_color}SPACE_ROOT_FREE${reset} = ${value_font_color}${value_bg_color}$SPACE_ROOT_FREE MB${reset}"
}

print_color_scheme() {
    echo "Column 1 background = $(add_color_to_string "$name_bg_color" "$name_bg_color_def")"
    echo "Column 1 font color = $(add_color_to_string "$name_font_color" "$name_font_color_def")"
    echo "Column 2 background = $(add_color_to_string "$value_bg_color" "$value_bg_color_def")"
    echo "Column 2 font color = $(add_color_to_string "$value_font_color" "$value_font_color_def")"
}