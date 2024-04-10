get_color_font() {
    local color_number=$1

    case $color_number in
        1) echo '\033[1;37m' ;;  # White
        2) echo '\033[0;31m' ;;  # Red
        3) echo '\033[0;32m' ;;  # Green
        4) echo '\033[0;34m' ;;  # Blue
        5) echo '\033[0;35m' ;;  # Purple
        6) echo '\033[0;30m' ;;  # Black
    esac
}

get_color_bg() {
    local color_number=$1

    case $color_number in
        1) echo '\033[47m' ;;  # White
        2) echo '\033[41m' ;;  # Red
        3) echo '\033[42m' ;;  # Green
        4) echo '\033[44m' ;;  # Blue
        5) echo '\033[45m' ;;  # Purple
        6) echo '\033[40m' ;;  # Black
    esac
}

set_default_color() {
    if [ -z "$name_bg_color" ]; then
    name_bg_color=6
    name_bg_color_def="yes"
fi

if [ -z "$name_font_color" ]; then
    name_font_color=1
    name_font_color_def="yes"
fi

if [ -z "$value_bg_color" ]; then
    value_bg_color=6
    value_bg_color_def="yes"
fi

if [ -z "$value_font_color" ]; then
    value_font_color=2
    value_font_color_def="yes"
fi
}

add_color_to_string() {
    local color_number=$1
    local default=$2

    line=""

    if [ "$default" == "yes" ]; then
        line="default"

    else
        line="$color_number"
    fi

    case $color_number in
            1) line+=" (white)" ;;
            2) line+=" (red)" ;;
            3) line+=" (green)" ;;
            4) line+=" (blue)" ;;
            5) line+=" (purple)" ;;
            6) line+=" (black)" ;;
        esac
    
    echo $line
}