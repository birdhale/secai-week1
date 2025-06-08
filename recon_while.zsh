#!/bin/zsh
count=1
echo "Running recon cycles:"
while [[ $count -le 3 ]]; do
    echo "Cycle $count complete."
    count=$((count + 1))
done

