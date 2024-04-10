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