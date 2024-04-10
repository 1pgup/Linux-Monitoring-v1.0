get_sys_info() {
    HOSTNAME=$(hostname)
    TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')
    USER=$(whoami)
    OS=$(lsb_release -d | cut -f2-)
    DATE=$(date +"%d %b %Y %T")
    UPTIME=$(uptime -p)
    UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
}

get_network_info() {
    IP=$(ip -4 a show scope global | awk '/inet/ {print $2}' | cut -d'/' -f1)

    IP_WITH_MASK=$(ip -4 a show scope global | awk '/inet/ {print $2}')
    MASK=$(ipcalc "$IP_WITH_MASK" | awk '/Netmask/ {print $2}')
    GATEWAY=$(ip r | awk '/default/ {print $3}')
}

get_mem_info() {
    RAM_TOTAL=$(free -m | awk '/Mem:/ {printf "%.3f", $2 / 1024}')
    RAM_USED=$(free -m | awk '/Mem:/ {printf "%.3f", $3 / 1024}')
    RAM_FREE=$(free -m | awk '/Mem:/ {printf "%.3f", $4 / 1024}')
}

get_disk_info() {
    SPACE_ROOT=$(df -k / | awk '/\// {printf "%.2f", $2 / 1024}')
    SPACE_ROOT_USED=$(df -k / | awk '/\// {printf "%.2f", $3 / 1024}')
    SPACE_ROOT_FREE=$(df -k / | awk '/\// {printf "%.2f", $4 / 1024}')
}
