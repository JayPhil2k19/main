#! /bin/bash

echo "System startup in:" | espeak -s150
systemd-analyze | awk '{print $10, $11}' | espeak -s150 2>/dev/null
