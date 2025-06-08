#!/bin/zsh
echo "Scanning targets:"
for target in Server1 Server2 Server3; do
    echo "Probing $target..."
done

echo -e "\\nScanning for .txt files:"
for file in *.txt; do
    if [[ -f "$file" ]]; then
        echo "Found: $file"
    fi
done

