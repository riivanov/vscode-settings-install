#!/usr/bin/env bash

# Detect OS type
# https://www.twitch.tv/ewo_on_sight 
UNAME=$(uname) 

if [ "$UNAME" == "Linux" ] ; then
  VSCODEDIR="$HOME/.config/Code\ -\ OSS/User";
elif [ "$UNAME" == "Darwin" ] ; then
  #echo "Darwin";
  exit 2; #not supported
elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]] ; then
  VSCODEDIR="$APPDATA/Code/User";
fi

# If PS: Invoke-WebRequest $myDownloadUrl -OutFile c:\file.ext 

#curl -s "https://github.com/riivanov/vscode-settings-install/blob/main/settings.json" -o $VSCODEDIR/settings.json
#curl -s "https://github.com/riivanov/vscode-settings-install/blob/main/keybindings.json" -o $VSCODEDIR/keybindings.json

echo $VSCODEDIR;