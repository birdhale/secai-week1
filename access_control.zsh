#!/bin/zsh
read -p "Enter clearance level (1-3): " level
if [[ "$level" -eq 1 ]]; then
    echo "Access granted: Basic clearance."
elif [[ "$level" -eq 2 ]]; then
    echo "Access granted: Intermediate clearance."
elif [[ "$level" -eq 3 ]]; then
    echo "Access granted: Elite clearance."
else
    echo "Access denied: Invalid clearance level."
fi

