#!/bin/zsh
infiltrate_dir() {
    if [[ ! -d "$1" ]]; then
        mkdir -p "$1"
        echo "Infiltrated and created $1."
    else
        echo "$1 already compromised."
    fi
}

infiltrate_dir "data_vault"
infiltrate_dir "shadow_ops"

