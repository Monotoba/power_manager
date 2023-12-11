#!/bin/bash

# Function to clear screen and display header
display_header() {
    clear  # Clear screen
    
    # Display Header
    printf "\n ========================================\n"
    printf " |       Power Management Utility       |\n"
    printf " |--------------------------------------|\n"
    printf " | version: 0.1.0                       |\n"
    printf " | Release date: 10 Dec 2023            |\n"
    printf " |                                      |\n"
    printf " ========================================\n"
    printf "\n"
}

# Function to display the menu
display_menu() {
    current_governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

    printf " Current Governor: $current_governor\n\n"
    printf " Available Governors:\n"
    printf " -------------------\n"

    governors=($(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors))

    for ((i=0; i<${#governors[@]}; i++)); do
        printf "   $((i+1)). ${governors[i]}\n"
    done

    printf "\n Enter the number to set the power\n level (Enter to keep current): "
}

# Function to set the selected power level
set_power_level() {
    read choice

    if [ -z "$choice" ]; then
        printf "\n No changes made. Current governor: $current_governor\n\n"
        exit 0
    fi

    index=$((choice-1))

    if [ "$index" -ge 0 ] && [ "$index" -lt "${#governors[@]}" ]; then
        selected_governor="${governors[index]}"

        printf " Setting governor to $selected_governor...\n"
        echo "$selected_governor" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
        printf " Governor set to $selected_governor\n"
    else
        printf " Invalid choice. No changes made.\n"
    fi
}

# Main script execution starts here
display_header
display_menu
set_power_level
