read_from_file() {
    n=0
    while IFS='=' read -r name value; do
        if [ "$name" == "column1_background" ]; then
            name_bg_color=$(echo $value | sed -e 's/[[:space:]]*$//')
        elif [ "$name" == "column1_font_color" ]; then
            name_font_color=$(echo $value | sed -e 's/[[:space:]]*$//')
        elif [ "$name" == "column2_background" ]; then
            value_bg_color=$(echo $value | sed -e 's/[[:space:]]*$//')
        elif [ "$name" == "column2_font_color" ]; then
            value_font_color=$(echo $value | sed -e 's/[[:space:]]*$//')
        fi
        n=$((n + 1))
    done < $filename
}