#!/bin/bash

# Run rofi emoji picker and capture the output
rofi_output=$(rofi -modi "emoji:rofimoji" -show emoji -hover-select -i)

# Check if the output is non-empty, then copy it to the clipboard
if [ -n "$rofi_output" ]; then
    wl-copy "$rofi_output"
fi

