#!/usr/bin/env bash

set -euo pipefail

# set INSTALL_DIR to the skel directory
SKEL_DIR="/etc/skel"
ICON_INSTALL_DIR="$SKEL_DIR/.icons"
PAPIRUS_FOLDERS_INSTALL_DIR="$SKEL_DIR/.local"

mkdir -p "$ICON_INSTALL_DIR" "$PAPIRUS_FOLDERS_INSTALL_DIR"

# install papirus-icon-theme
wget -qO- https://git.io/papirus-icon-theme-install | env DESTDIR="$ICON_INSTALL_DIR" sh

# install papirus-folders
wget -qO- https://git.io/papirus-folders-install | env PREFIX=$PAPIRUS_FOLDERS_INSTALL_DIR sh