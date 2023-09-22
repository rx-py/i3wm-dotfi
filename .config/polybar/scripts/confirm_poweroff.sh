#!/bin/bash

if [ "$(dmenu -p "Confirm power off?" <<< "Yes\nNo")" == "Yes" ]; then
    sudo poweroff
fi

