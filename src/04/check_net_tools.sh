function check_net_tools {
    package=$(apt list --installed 2>/dev/null | grep "net-tools")
    if [ -z "$package" ]; then
        echo "ifconfig not found. Install net-tools?[Y/n]"
        read x
        if [ "$x" = 'Y' ] || [ "$x" = 'y' ]; then
            sudo apt install net-tools
            exit
        fi
    fi
}