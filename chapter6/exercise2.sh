#!/bin/bash

ls -l / | sort -k 3,3 | sed -n '2,4p' | \
    awk 'BEGIN {print "Top 3folders size in / are:\n"} {print $9" -> " $5 " bytes."}'
