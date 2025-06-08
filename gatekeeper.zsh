#!/bin/zsh
SECRET_CODE="darknet42"
read -p "Enter secret code: " code
if [[ "$code" == "$SECRET_CODE" ]]; then
    echo "Access granted to the Darknet!"
else
    echo "Access denied. Intruder alert!"
fi

