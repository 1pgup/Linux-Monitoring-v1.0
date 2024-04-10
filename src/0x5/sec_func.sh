calc_md5() {
    local file=$1
    md5sum "$file" | awk '{print $1}'
}

get_file_type() {
    local file=$1
    file "$file" | cut -d: -f2- | sed 's/^[ \t]*//'
}
