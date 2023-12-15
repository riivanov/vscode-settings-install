#!/usr/bin/env bash

# Detect OS type
# https://www.twitch.tv/ewo_on_sight 
UNAME=$(uname) 

if [ "$UNAME" == "Linux" ] ; then 
  echo "Linux"; 
elif [ "$UNAME" == "Darwin" ] ; then 
  echo "Darwin"; 
elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]] ; then 
  echo "Windows" 
fi

# If PS: Invoke-WebRequest $myDownloadUrl -OutFile c:\file.ext 

#curl -s "https://github.com/riivanov/vscode-settings-install/blob/main/settings.json" -o $VSCODEDIR/settings.json
#curl -s "https://github.com/riivanov/vscode-settings-install/blob/main/keybindings.json" -o $VSCODEDIR/keybindings.json

echo "hello world"