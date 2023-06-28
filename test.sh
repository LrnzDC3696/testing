#!/bin/bash

sudo su

function custom_install() {
  local package=$1
  echo "Do you want to install $package?"
  read -p "(y/N) " response
  if [[ $response =~ ^y ]]; then
    sudo pacman -S --noconfirm $package &&
      echo "$1 Installed" >> $LOG_FILE
  else
    echo "$1 NOT INSTALLED."
  fi
}

custom_install python3
