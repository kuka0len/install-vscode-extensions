#!/bin/bash

green='\033[0;32m'
red='\033[0;31m'
nc='\033[0m'

while IFS= read -r ext; do
  code --install-extension $ext
  if [ $? -eq 0 ]; then
    echo -e "$ext: ${green}OK ✔${nc}"
  else
    echo -e "$ext: ${red}FAIL ✘${nc}"
  fi
done <"./extensions.txt"
