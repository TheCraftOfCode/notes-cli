#!/bin/bash
test -d "$HOME/notes-cli"  && rm "$HOME/notes-cli" -r; echo "Removed the files from location"
if [ -d $HOME/notes-cli ]; then
rm "$HOME/notes-cli" -r; echo "Removed the files from location"
fi
curbash=$(cat $HOME/.bashrc)
if [[ $curbash == *"\$HOME/notes-cli"* ]]; then
sed "/notes-cli/d" -i $HOME/.bashrc
source $HOME/.bashrc
echo 'Successfully removed from PATH. You cannot use "notes" command from now '
else
echo "Program not in path and 'notes' command can't be used.";
fi
exec bash