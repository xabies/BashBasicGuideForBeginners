#!/bin/bash

# Display a list of all the users on your system who log in with the
# Bash shell as a default.
cat /etc/passwd | grep bash$

# From the /etc/group directory, display all lines starting with the string "daemon".
cat /etc/group | grep ^daemon

# Print all the lines from the same file that don't contain the string.
cat /etc/group | grep -v daemon

# Display localhost information from the /etc/hosts file, display the
# line number(s) matching the search string and count the number of
# occurrences of the string.
cat /etc/hosts | grep -n localhost
cat /etc/hosts | grep -c localhost


# Display a list of /usr/share/doc subdirectories containing information about shells.
ls /usr/share/doc/ | grep shell

# How many README files do these subdirectories contain? Don't count
# anything in the form of "README.a_string".
ls /usr/share/doc/* | grep README | grep -v "README.\."

# Make a list of files in your home directory that were changed less
# that 10 hours ago, using grep, but leave out directories.
ls -lR ~ | grep "ene 29 19:1*"

# Using the file system table (/etc/fstab for instance), list local disk devices.
cat /etc/fstab grep -v ^#

# Make a script that checks whether a user exists in /etc/passwd. For
# now, you can specify the user name in the script, you don't have to
# work with arguments and conditionals at this stage.
cat /etc/passwd | grep root

# Display configuration files in /etc that contain numbers in their
# names.
ls /etc/ | grep "[0-9].*.conf
"
