#!/bin/bash
test -d "/opt/notes-cli"  && rm /opt/notes-cli -r; echo "Removed the files from location"

curbash=$(cat ~/.bashrc)
if [[ $curbash == *"/opt/notes-cli"* ]]; then
line="/"
sed "/notes-cli/d" -i.backup ~/.bashrc
source ~/.bashrc
echo 'Successfully removed from PATH. You cannot use "notes" command from now '
else
echo "Program not in path and 'notes' command can't be used.";
fi
exec bash