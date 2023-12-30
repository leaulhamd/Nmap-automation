#!/bin/bash

# Function to perform ping scan
perform_ping_scan() {
    echo "Performing Ping Scan for target IP: $target_ip"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: ping -c 4 $target_ip	<<"
    echo "--------------------------------------------------------------------------"
    ping -c 4 $target_ip  # Modify the ping command as needed
    #save_or_not
}

# Function to save the scan results to a text file


# Function to perform host discovery without ping
perform_host_discovery_without_ping() {
    echo "Performing Host Discovery without Ping for target IP: $target_ip"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -Pn $target_ip	<<"
    echo "--------------------------------------------------------------------------"
    nmap -Pn $target_ip  # Perform host discovery without ping using nmap
    #save_or_not
}

# Function to perform basic port scanning
perform_basic_port_scan() {
    echo "Performing Basic Port Scan for target IP: $target_ip with timing and performance value: $timing_value"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -T $timing_value -p 1-1024 $target_ip	<<"
    echo "--------------------------------------------------------------------------"
    nmap -T $timing_value -p 1-1024 $target_ip 2>&1  # Perform basic port scanning with specified timing value
    #save_or_not
}

# Function to save scan results or go back to the previous menu


# Function to perform full port scanning
perform_full_port_scan() {
    echo "Performing Full Port Scan for target IP: $target_ip with timing and performance value: $timing_value"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -T $timing_value -p- $target_ip  	<<"
    echo "--------------------------------------------------------------------------"
    nmap -T $timing_value -p- $target_ip 
    #save_or_not
    # Rest of the script remains the same...
}

# Main script starts here...

# The rest of your script remains unchanged.


# Function to perform TCP Connect Scan
perform_tcp_connect_scan() {
    echo "Performing TCP Connect Scan for target IP: $target_ip"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -T $timing_value -sT $target_ip  	<<"
    echo "--------------------------------------------------------------------------"
    nmap -T $timing_value -sT $target_ip  # Perform TCP Connect Scan with specified timing value
}

# Function to perform SYN Scan
perform_syn_scan() {
    echo "Performing SYN Scan for target IP: $target_ip"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sS $target_ip  	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sS $target_ip  # Perform SYN Scan
}

# Function to perform ACK Scan
perform_ack_scan() {
    echo "Performing ACK Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sA $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sA $target_ip  # Perform ACK Scan
}

# Function to perform FIN Scan
perform_fin_scan() {
    echo "Performing FIN Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sF $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sF $target_ip  # Perform FIN Scan
}

# Function to perform Null Scan
perform_null_scan() {
    echo "Performing Null Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sN $target_ip  	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sN $target_ip  # Perform Null Scan
}

# Function to perform Xmas Scan
perform_xmas_scan() {
    echo "Performing Xmas Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sX $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sX $target_ip  # Perform Xmas Scan
}

# Function to perform IDLE Scan (Zombie Scan)
perform_idle_scan() {
    echo "Performing IDLE Scan (Zombie Scan) for target IP: $target_ip using zombie host: $zombie_host"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sI $zombie_host $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sI $zombie_host $target_ip  # Perform IDLE Scan (Zombie Scan) with the specified zombie host
}

# Function to perform UDP Scan
perform_udp_scan() {
    echo "Performing UDP Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sU $target_ip  	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sU $target_ip  # Perform UDP Scan
}

# Function to perform Service Version Detection
perform_service_version_detection() {
    echo "Performing Service Version Detection for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sV $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sV $target_ip  # Perform Service Version Detection
}

# Function to perform OS Scan
perform_os_scan() {
    echo "Performing OS Scan for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -O $target_ip    	<<"
    echo "--------------------------------------------------------------------------"
    nmap -O $target_ip  # Perform OS Scan
}

# Function to perform NSE (Nmap Scripting Engine)
perform_nse() {
    echo "Performing NSE (Nmap Scripting Engine) for target IP: $target_ip"
     echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -sC $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -sC $target_ip  # Perform NSE
}

# Function to perform Aggressive Scan
perform_aggressive_scan() {
    echo "Performing Aggressive Scan for target IP: $target_ip"
    echo "--------------------------------------------------------------------------"
    echo ">>	Command: nmap -T4 -A $target_ip   	<<"
    echo "--------------------------------------------------------------------------"
    nmap -T4 -A $target_ip  # Perform Aggressive Scan
}

# Main script
menu_stack=()  # Stack to keep track of the current menu level
main_menu_stack=()  # Stack to keep track of the main menu level

# Function to navigate back in the menu
go_back() {
    if [ ${#menu_stack[@]} -gt 0 ]; then
        # If there's a menu on the stack, go back to the previous menu
        unset menu_stack[${#menu_stack[@]}-1]  # Remove the last item from the stack
    else
        echo "You are already at the main menu."
    fi
}

# Function to reset the menu stack to the main menu
reset_menu() {
    menu_stack=("${main_menu_stack[@]}")  # Restore the main menu stack
}

# Main script
while true; do
    clear
echo " _  _ __  __   _   ___   _____   __  __  __  ___  ___ ___ _  _ "
echo "| \| |  \/  | /_\ | _ \ | _ ) \ / / |  \/  |/ _ \| __| __| \| |"
echo "| .' | |\/| |/ _ \|  _/ | _ \' V /  | |\/| | (_) | _|| _|| .' |"
echo "|_|\_|_|  |_/_/ \_\_|   |___/ |_|   |_|  |_|\___/|___|___|_|\_|"
echo "                                                               "
    echo "--------------------------------------------------------------"
    echo "  For any queries please contact : leaulhamdmoeen@gmail.com"
    echo "--------------------------------------------------------------"
    echo "                                                               "
    read -p ">> Enter the target address: " target_ip

    while true; do
        echo "Choose an option:"
        echo "                                                               "

        echo "1. Scanning"
        echo "2. Enumeration"
        echo "0. Back"  # Option to go back to the previous menu
        echo "                                                               "
        read -p "Enter your choice (0/1/2): " choice

        case $choice in
            1)
                while true; do
                    echo "Choose a scanning method:"
                    echo "                                                               "
                    echo "1. Host Discovery"
                    echo "2. Port Scanning"
                    echo "3. TCP Connect Scan"
                    echo "4. Half Scan"
                    echo "5. UDP Scan"
                    echo "0. Back"  # Option to go back to the previous menu
                    echo "                                                               "
                    read -p "Enter your choice (0/1/2/3/4/5): " scan_choice

                    case $scan_choice in
                        1)
                            while true; do
                                echo "Choose a host discovery method:"
                                echo "                                                               "
                                echo "1. Ping Scan"
                                echo "2. Host Discovery without Ping"
                                echo "0. Back"  # Option to go back to the previous menu
                                echo "                                                               "
                                read -p "Enter your choice (0/1/2): " host_discovery_choice

                                case $host_discovery_choice in
                                    1)
                                        perform_ping_scan
                                        ;;
                                    2)
                                        perform_host_discovery_without_ping
                                        ;;
                                    0)
                                        break
                                        ;;
                                    *)
                                        echo "Invalid host discovery choice. Please select 0, 1, or 2."
                                        ;;
                                esac
                            done
                            ;;
                        2)
                            read -p "Enter timing and performance value (-T 1-5): " timing_value
                            while true; do
                                echo "Choose a port scanning method:"
                                echo "                                                               "
                                echo "1. Basic Port Scan"
                                echo "2. Full Port Scan"
                                echo "0. Back"  # Option to go back to the previous menu
                                echo "                                                               "
                                read -p "Enter your choice (0/1/2): " port_scan_choice

                                case $port_scan_choice in
                                    1)
                                        perform_basic_port_scan
                                        ;;
                                    2)
                                        perform_full_port_scan
                                        ;;
                                    0)
                                        break
                                        ;;
                                    *)
                                        echo "Invalid port scanning choice. Please select 0, 1, or 2."
                                        ;;
                                esac
                            done
                            ;;
                        3)
                            read -p "Enter timing and performance value (-T 1-5): " timing_value
                            perform_tcp_connect_scan
                            ;;
                        4)
                            while true; do
                                echo "Choose a half scan type:"
                                echo "                                                               "
                                echo "1. SYN Scan"
                                echo "2. ACK Scan"
                                echo "3. FIN Scan"
                                echo "4. Null Scan"
                                echo "5. Xmas Scan"
                                echo "6. IDLE Scan (Zombie Scan)"
                                echo "0. Back"  # Option to go back to the previous menu
                                echo "                                                               "
                                read -p "Enter your choice (0/1/2/3/4/5/6): " half_scan_choice

                                case $half_scan_choice in
                                    1)
                                        perform_syn_scan
                                        ;;
                                    2)
                                        perform_ack_scan
                                        ;;
                                    3)
                                        perform_fin_scan
                                        ;;
                                    4)
                                        perform_null_scan
                                        ;;
                                    5)
                                        perform_xmas_scan
                                        ;;
                                    6)
                                        read -p "Enter the zombie host IP address: " zombie_host
                                        perform_idle_scan
                                        ;;
                                    0)
                                        break
                                        ;;
                                    *)
                                        echo "Invalid half scan choice. Please select 0, 1, 2, 3, 4, 5, or 6."
                                        ;;
                                esac
                            done
                            ;;
                        5)
                            perform_udp_scan
                            ;;
                        0)
                            break
                            ;;
                        *)
                            echo "Invalid scanning method choice. Please select 0, 1, 2, 3, 4, or 5."
                            ;;
                    esac
                done
                ;;
            2)
                while true; do
                    echo "Choose an enumeration method:"
                    echo "                                                               "
                    echo "1. Service Version Detection"
                    echo "2. OS Scan"
                    echo "3. NSE (Nmap Scripting Engine)"
                    echo "4. Aggressive Scan"
                    echo "0. Back"  # Option to go back to the previous menu
                    echo "                                                               "
                    read -p "Enter your choice (0/1/2/3/4): " enumeration_choice

                    case $enumeration_choice in
                        1)
                            perform_service_version_detection
                            ;;
                        2)
                            perform_os_scan
                            ;;
                        3)
                            perform_nse
                            ;;
                        4)
                            perform_aggressive_scan
                            ;;
                        0)
                            break
                            ;;
                        *)
                            echo "Invalid enumeration method choice. Please select 0, 1, 2, 3, or 4."
                            ;;
                    esac
                done
                ;;
            0)
                break
                ;;
            *)
                echo "Invalid choice. Please select 0, 1, or 2."
                ;;
        esac
    done
done
