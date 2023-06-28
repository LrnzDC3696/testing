#!/bin/bash

function custom_install {
  local package=$1
  echo "Do you want to install $package?"
  read -p "(y/N) " response
  if [[ $response =~ ^y ]]; then
    sudo apt install -y $package &&
      echo "$1 Installed"
  else
    echo "$1 NOT INSTALLED."
  fi
}

custom_install python3
