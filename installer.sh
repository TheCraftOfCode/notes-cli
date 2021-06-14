#!/bin/bash
test ! -d "/opt/notes-cli"  && mkdir /opt/notes-cli; echo "Added the files to the installation"
cp * -r /opt/notes-cli 

curbash=$(cat ~/.bashrc)
if [[ $curbash != *"/opt/notes-cli"* ]]; then
echo 'export PATH="/opt/notes-cli:$PATH"' >> ~/.bashrc;
source ~/.bashrc
echo 'Successfully installed and added to PATH! You can now use "notes" command! '
else
echo 'Installation complete and You are already using "notes" command!'
fi
chmod +x /opt/notes-cli
chmod +x ./uninstaller.sh
chmod +x clean
echo "If you need to clear the setup files, run ./clean from THIS location"
exec bash