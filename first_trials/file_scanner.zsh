#!/bin/zsh
count=0
for file in *.txt; do
    if [[ -f "$file" ]]; then
        count=$((count + 1))
    fi
done
echo "Total .txt files found: $count"
