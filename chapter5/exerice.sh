#!/bin/bash

# Print a list of files in your scripts directory, ending in
# ".sh". Mind that you might have to unalias ls. Put the result in a
# temporary file.
ls -R ~/ | sed -n '/\.sh$/p' > temp1.txt

# Make a list of files in /usr/bin that have the letter "a" as the
# second character. Put the result in a temporary file.
ls /usr/bin | sed -n '/^.a/p' > temp2.txt

# Delete the first 3 lines of each temporary file.
sed '1,3d' temp1.txt > temp3.txt
sed '1,3d' temp2.txt >> temp3.txt

# Print to standard output only the lines containing the pattern "an".
sed -n '/an/p' temp3.txt 

# Create a file holding sed commands to perform the previous two
# tasks. Add an extra command to this file that adds a string like
# "*** This might have something to do with man and man pages ***" in
# the line preceding every occurence of the string "man". Check the
# results.

# A long listing of the root directory, /, is used for input. Create a
# file holding sed commands that check for symbolic links and plain
# files. If a file is a symbolic link, precede it with a line like
# "--This is a symlink--". If the file is a plain file, add a string
# on the same line, adding a comment like "<---this is a plain file".

# Create a script that shows lines containing trailing white spaces
# from a file. This script should use a sed script and show sensible
# information to the user.
