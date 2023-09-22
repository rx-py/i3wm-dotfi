#!/bin/bash

# both of these scripts basically do the same thing,
# just trying to figure out which one would work better with [wired-network] module

# Check if the network interface is up
# if ip link show enp116s0f1u1 | grep "state UP" > /dev/null; then
    # Network is up, enable the module
#     sed -i 's/^\[module\/wired-network\]/\[module\/wired-network\]\nenabled = true/' ~/.config/polybar/config.ini
# else
    # Network is down, disable the module
#     sed -i 's/^\[module\/wired-network\]/\[module\/wired-network\]\nenabled = false/' ~/.config/polybar/config.ini
# fi



# Get the status of the wired network interface 
if ip link show enp116s0f1u1 | grep "state UP" > /dev/null; then
    # Network is up, so print "enabled = true" to enable the 'wired-network' module
    echo "enabled = true"
else
    # Network is down, so print "enabled = false" to disable the 'wired-network' module
    echo "enabled = false"
fi


# Restart Polybar to apply changes
polybar-msg cmd restart

