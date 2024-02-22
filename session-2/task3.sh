#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments provided. Exiting gracefully."
    exit 1
else
    echo "continue"
fi


for service in "$@"; do
    if systemctl -q is-active $service ; then
        echo "$service installed"
    else
        echo "$service not installed"
    fi
done
