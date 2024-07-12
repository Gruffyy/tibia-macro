# Tibia Auto Keypresser (Linux/Wayland)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This Bash script automates key presses in the Tibia game client on Linux systems using Wayland. It runs discreetly in the background, sending customizable keystrokes at regular intervals without interrupting your workflow.

## Features

- **Background Operation:** Runs silently without interfering with other tasks.
- **Customizable:** Easily configure the keys and their intervals.
- **Window Detection:** Automatically locates and tracks the Tibia window, adapting to title changes.
- **Fail-Safe:** Gracefully exits if the Tibia window is closed or cannot be found.

## Requirements

- **xdotool:** Simulates keyboard and mouse input. Install with:
  ```bash
  sudo apt install xdotool