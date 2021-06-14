#!/bin/bash

test ! -d "$HOME/notes-cli"  && mkdir $HOME/notes-cli
cp * -r $HOME/notes-cli
echo "Added the files to the installation"
curbash=$(cat $HOME/.bashrc)
if [[ $curbash != *"$HOME/notes-cli"* ]]; then
echo 'export PATH="$HOME/notes-cli:$PATH"' >> $HOME/.bashrc;
source $HOME/.bashrc
export PATH="$HOME/notes-cli:$PATH"
echo 'Successfully installed and added to PATH! You can now use "notes" command! '
else
echo 'Installation complete and You are already using "notes" command!'
fi
chmod +x $HOME/notes-cli
chmod +x ./uninstaller.sh
echo "You can delete the downloaded folder now."