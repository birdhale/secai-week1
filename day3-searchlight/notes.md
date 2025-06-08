# Day 3 – Searchlight 🔦

## Bandit4 → Bandit5

### Login
```bash
ssh bandit4@bandit.labs.overthewire.org -p 2220
# Password: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

Bandit 5 Password = 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

# How does the `file` command determine if a file is ASCII text or binary?

# The `file` command examines the contents of a file to determine its type.
# For ASCII text, it checks if the file contains only printable ASCII characters and standard whitespace.
# If the file contains non-printable or non-ASCII bytes, it is classified as binary.
# The command uses "magic numbers" and pattern matching to identify file types.

# Example: Loop to find ASCII file in a folder
for f in inhere/*; do
  file "$f"
done
