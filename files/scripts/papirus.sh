#!/usr/bin/bash

set -ouex pipefail

# first install the papirus icon theme
# this installs to /usr/share/icons/
wget -qO- https://git.io/papirus-icon-theme-install | sh

# then install the papirus-folders script
mkdir -p /tmp/papirus-folders
cd /tmp/papirus-folders

curl -LO https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/papirus-folders
chmod +x papirus-folders
cp papirus-folders /usr/local/bin

# then install the catppuccin colors
git clone https://github.com/catppuccin/papirus-folders.git /tmp/papirus-folders/catppuccin-papirus-folders
cp -r /tmp/papirus-folders/catppuccin-papirus-folders/src/* /usr/share/icons/Papirus

# then install the colors
./papirus-folders -C cat-mocha-blue --theme Papirus
