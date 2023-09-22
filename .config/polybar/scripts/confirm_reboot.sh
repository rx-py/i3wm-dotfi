#!/bin/bash

if [ "$(dmenu -p "Confirm reboot?" <<< "Yes\nNo")" == "Yes" ]; then
    sudo reboot
fi

