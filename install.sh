#!/usr/bin/env bash

# Detect OS type
# https://www.twitch.tv/ewo_on_sight 
UNAME=$(uname) 

if [ "$UNAME" == "Linux" ] ; then
  VSCODEDIR="$HOME/.config/Code\ -\ OSS/User";
elif [ "$UNAME" == "Darwin" ] ; then
  exit 2; #not supported
elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]] ; then
  VSCODEDIR="$APPDATA/Code/User";
fi

# Download settings.json
curl -s "https://raw.githubusercontent.com/riivanov/vscode-settings-install/main/settings.json" -o "$VSCODEDIR"/settings.json
# Download keybindings.json
curl -s "https://raw.githubusercontent.com/riivanov/vscode-settings-install/main/keybindings.json" -o "$VSCODEDIR"/keybindings.json

# Download extension-list
curl -s "https://raw.githubusercontent.com/riivanov/vscode-settings-install/main/extension-list.txt" |
xargs -n1 code --install-extension