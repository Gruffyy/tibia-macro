#!/bin/bash
delay=1  # Delay between checks (in seconds)

# Array of key presses (format: "key interval_in_seconds")
key_presses=(
    "1 20"      # Key "1" every 20 seconds, I used burst arrows timing with softs, note: it fucked up the soul points after a while. (way too fast regain)
    "2 450"     # Key "2" every 450 seconds (7.5 minutes) (ring of healing)
    # Add more in the format: "key interval_in_seconds"
)

# Function to get the Tibia window ID
get_window_id() {
    xdotool search --onlyvisible --class "Tibia" | head -n 1
}

# Get initial window ID and check if Tibia is running
window_id=$(get_window_id)
if [ -z "$window_id" ]; then
    echo "Tibia window not found. Exiting script." >&2  # Print error message to stderr
    exit 1
fi

# Array to track start times for each key press
START_TIMES=()
for (( i=0; i<${#key_presses[@]}; i++ )); do
    START_TIMES+=($(date +%s)) 
done

# Main loop
while true; do
    # Check if window exists or ID changed
    new_window_id=$(get_window_id)
    if [ -z "$new_window_id" ] || [ "$new_window_id" != "$window_id" ]; then
        echo "Tibia window not found or ID changed. Exiting script." >&2  # Print error message to stderr
        exit 0 
    fi

    # Iterate through key presses
    for (( i=0; i<${#key_presses[@]}; i++ )); do
        key_interval=(${key_presses[$i]})
        key="${key_interval[0]}"
        interval="${key_interval[1]}"

        # Press the key if enough time has passed
        if [[ $(($(date +%s) - START_TIMES[$i])) -ge $interval ]]; then
            xdotool key --window "$window_id" "$key"
            START_TIMES[$i]=$(date +%s)  
        fi
    done

    sleep "$delay" 
done
