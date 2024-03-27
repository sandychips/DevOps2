#!/bin/bash

# Function to get OS version
get_os_version() {
    echo "OS Version:"
    cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f 2
    echo ""
}

# Function to list users with bash shell
list_bash_users() {
    echo "Users with Bash shell:"
    grep -E "/bash$" /etc/passwd | cut -d ":" -f 1
    echo ""
}

# Function to show open ports
show_open_ports() {
    echo "Open Ports:"
    sudo netstat -tuln
    echo ""
}

# Main function
main() {
    get_os_version
    list_bash_users
    show_open_ports
}

# Call main function
main
 