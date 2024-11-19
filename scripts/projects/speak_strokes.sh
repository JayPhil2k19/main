#!/bin/bash

# Run screenkey and redirect output to a file
touch . keystrokes.txt
screenkey -o =keystrokes.txt &

# Infinite loop to read and speak keystrokes
while true; do
    # Read the latest line from the keystrokes file
    keystroke=$(tail -n 1 keystrokes.txt)

    # Use espeak to verbalize the keystroke
    echo "$keystroke" | espeak

    # Sleep for a short duration to avoid high CPU usage
    sleep 0.5
done

