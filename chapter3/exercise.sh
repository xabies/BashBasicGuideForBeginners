#!/bin/bash

# Local variables
VAR1="thirteen"
VAR2="13"
VAR3="Happy Birthay"

echo "\$VAR1 is: $VAR1"
echo "\$VAR2 is: $VAR2"
echo "\$VAR3 is: $VAR3"

# Clear VAR3
unset VAR3


width=50
height=80
echo "Surface is: $(($width*$height))"
