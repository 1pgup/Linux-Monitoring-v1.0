get_folders_info() {
    total_folders=$(find "$dir" -type d | wc -l)
    top_folders=$(du -sh "$dir"/* | sort -rh | head -n 5)
}

get_files_count() {
    total_files=$(find "$dir" -type f | wc -l)
    conf_files=$(find "$dir" -type f -name "*.conf" | wc -l)
    text_files=$(find "$dir" -type f -exec file {} \; | grep -c "text")
    exec_files=$(find "$dir" -type f -exec file {} \; | grep -c "executable")
    log_files=$(find "$dir" -type f -name "*.log" | wc -l)
    arch_files=$(find "$dir" -type f \( -name "*.zip" -o -name "*.tar" -o -name "*.gz" \) | wc -l)
    symb_links=$(find "$dir" -type l | wc -l)
}

get_top_10_files() {
    if [ "$total_files" -gt 0 ]; then
        top_files=$(find "$dir" -type f -exec du -h {} + | sort -rh | head -n 10 | awk '{print $2 ", " $1}')
    fi

    if [ "$exec_files" -gt 0 ]; then
        top_exec=$(find "$dir" -type f -executable -exec du -h {} + | sort -rh | head -n 10)
        top_exec_with_hash=$(echo "$top_exec" | while read -r line; do
            file_path=$(echo "$line" | awk '{print $2}')
            file_size=$(echo "$line" | awk '{print $1}')
            md5_hash=$(calc_md5 "$file_path")
            echo "$file_path, $file_size, $md5_hash"
        done)
    fi
}
