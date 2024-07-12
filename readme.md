# Tibia Auto Keypresser (Linux/Wayland)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This Bash script automates key presses in the Tibia game client on Linux systems using Wayland. It's designed to run discreetly in the background, sending customizable keystrokes at regular intervals without interfering with your workflow.

## Features

- **Background Operation:** Runs silently without stealing focus from other tasks.
- **Customizable:** Easily configure the keys and their intervals.
- **Window Detection:** Automatically locates and tracks the Tibia window, adapting to title changes.
- **Fail-Safe:** Gracefully exits if the Tibia window is closed or cannot be found.
- **Lightweight:** Uses only `xdotool` for minimal dependencies.

## Requirements

- **xdotool:** Simulates keyboard and mouse input. Install with:
  ```bash
  sudo apt install xdotool

## Installation
Clone the Repository:
```bash
git clone [https://github.com/Gruffyy/tibia-macro](https://github.com/Gruffyy/tibia-macro.git) 
cd tibia-macro
```
## Make Executable:
```bash
chmod +x tibia_macro.sh
```
## Configuration
Open the Script:

Edit tibia_macro.sh in a text editor.
Key Presses:

Modify the key_presses array to define your desired key presses and intervals (in seconds):
```bash
key_presses=(
    "1 20"      # Key "1" every 20 seconds
    "2 450"     # Key "2" every 450 seconds (7.5 minutes)
    # Add more in the format: "key interval_in_seconds"
)
```
## Usage
Focus Tibia: Launch the Tibia client and ensure it is in focus.
Run in Background: Execute the script in the background.
```bash
./tibia_macro.sh &

Stop:
Find the Process ID (PID):
ps aux | grep tibia_macro
Terminate:

kill <PID> 
```
## Troubleshooting
Window Not Found: If the script fails to find the Tibia window, double-check the window class ("Tibia") in the get_window_id function. If you have multiple Tibia windows, make sure to focus the correct window before running the script.
Wayland Compatibility: This script is specifically designed for Wayland. If you are using an X11 window manager, focus stealing could occur and you might need to adjust the window focus mechanism.
Disclaimer
Use this script at your own peril! I've no clue if battle-eye detects it.  

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests with your improvements.

## License
This project is licensed under the MIT License - see the LICENSE file for details.


Let me know if you need any further adjustments or have more questions!
