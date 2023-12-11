# Power Management Utility for Linux

## Overview

This Power Management Utility is a Bash script designed for managing CPU power settings on Linux systems. The script allows users to view available governors, set the power level, and provides a simple menu interface.

## Motovation
This script was written hastily in a half hour. It came about because I've been playing with LLMs lately and Ubuntu 22.04 does not exspose the performance governor. Only the power_saver and balanced governors are exposed to the Settings UI. So for the past week I've been typing the commands needed to see what power setting was active, and then another command to change it if needed. I simply got tired of doing this each day. FYI: if you use this script to set the performance governor, be aware that opening the Settings menu may cause the balanced power setting to be restored. 

## Features

- Display current CPU governor.
- List available governors.
- Set the CPU governor to a user-selected option.
- Simple and user-friendly menu interface.

## Prerequisites

- This script is designed for Linux systems, specifically tested on Ubuntu 22.04.
- Administrative privileges may be required to change CPU governors.

## Usage

1. Download the script: `git clone https://github.com/your-username/power-management.git`
2. Navigate to the script directory: `cd power-management`
3. Make the script executable: `chmod +x power_management.sh`
4. Run the script: `./power_management.sh`

## License

This project is licensed under the [MIT License](LICENSE).

## Contributions

Contributions are welcome! If you find a bug or have an enhancement in mind, feel free to open an issue or submit a pull request.

## Contact

For any questions or concerns, please contact Randy via email: randy@example.com

