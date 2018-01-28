#!/bin/bash

# Print home directory
echo "Your home path directory is: '$HOME'"

# Print term type
echo "Terminal Type: '$TERM'"

# Print services started up in run level 3
echo "Services Started up in run level 3"
SERVICES=$(ls /etc/rc3.d/S*)
echo "$SERVICES"
