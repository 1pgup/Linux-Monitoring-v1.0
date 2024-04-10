print_folders_info() {
    echo "Total number of folders (including all nested ones) = $total_folders"

    if [ "$total_folders" -gt 0 ]; then
        echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
        echo "$top_folders" | awk '{print NR " - " $2 ", " $1}'
    fi
}

print_files_count_info() {
    echo "Total number of files = $total_files"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $conf_files"
    echo "Text files = $text_files"
    echo "Executable files = $exec_files"
    echo "Log files (with the extension .log) = $log_files"
    echo "Archive files = $arch_files"
    echo "Symbolic links = $symb_links"
}

print_top_10_files() {
    if [ "$total_files" -gt 0 ]; then
        echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
        echo "$top_files" | while IFS=, read -r path size; do
            file_type=$(get_file_type "$path")
            echo "$path, $size, $file_type"
        done | awk '{print NR " - " $0}'
    fi

    if [ "$exec_files" -gt 0 ]; then
        echo "TOP 10 executable files of the maximum size arranged in descending order (path, size, and MD5 hash)"
        echo "$top_exec_with_hash" | awk '{print NR " - " $0}'
    fi
}
