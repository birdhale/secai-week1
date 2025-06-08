# How to cat a file with a dash in the filename

# If the file is named '-' (just a dash), use:
cat ./-

# If the file has a dash anywhere in the name (e.g., 'file-name.txt'), you can use:
cat file-name.txt

# If the file starts with a dash (e.g., '-secret'), use '--' to indicate the end of options:
cat -- -secret

# For files with multiple leading dashes (e.g., '--hidden'), also use '--':
cat -- --hidden

# For files with unusual names, use tab completion or list files with 'ls -la' to get the exact name.
