check_params() {
    re='^[1-6]$'
    for arg in "$@"; do
        if ! [[ $arg =~ $re ]]; then
            echo "Error: All arguments must be numbers in the interval from 1 to 6."
            exit 1
        fi
    done

    if [[ "$1" == "$2" || "$3" == "$4" ]]; then
        echo "Error: Background and font colors must be different."
        exit 1
    fi
}