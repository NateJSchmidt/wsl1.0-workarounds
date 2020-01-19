#!/bin/bash

# Please note that this script makes use of sudo and assumes that the executing user has sudo permissions

# first fix umask in home directory
echo "# fix umask
if [[ \"$(umask)\" = \"0000\" ]]; then
    umask 0022
fi" | tee -a .bashrc .profile > /dev/null

# fix umask for vscode
echo "
[automount]
enabled = true
options = \"uid=1000,gid=1000,umask=0022,fmask=11,metadata\"" | sudo tee -a /etc/wsl.conf > /dev/null