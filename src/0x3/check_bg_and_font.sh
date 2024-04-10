check_bg_and_font_eq() {
    while [[ "$name_bg_color" == "$name_font_color" || "$value_bg_color" == "$value_font_color" ]]; do
        echo "Error: Background and font colors must be different."
        read -p "Want to enter again?: Y/N? " answer
        if [[ $answer == 'y' || $answer == 'Y' ]]; then
            read -p "Names background (1-6): " name_bg_color
            if ! [[ $name_bg_color =~ $re ]]; then
                echo "Error: All arguments must be numbers in the interval from 1 to 6."
                exit 1
            fi
    
            read -p "Names font (1-6): " name_font_color
            if ! [[ $name_font_color =~ $re ]]; then
                echo "Error: All arguments must be numbers in the interval from 1 to 6."
                exit 1
            fi
    
            read -p "Values background (1-6): " value_bg_color
            if ! [[ $value_bg_color =~ $re ]]; then
                echo "Error: All arguments must be numbers in the interval from 1 to 6."
                exit 1
            fi
    
            read -p "Values font (1-6): " value_font_color
            if ! [[ $value_font_color =~ $re ]]; then
                echo "Error: All arguments must be numbers in the interval from 1 to 6."
                exit 1
            fi
        else
            exit 1
        fi
    done
}