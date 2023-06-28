function ask_to_install() {
  local package=$1
  echo "Do you want to install $package?"
  read -p "(y/N) " response
  if [[ $response =~ ^y ]]; then
    echo "Installing $package..."
    sudo apt-get install $package
  else
    echo "Not installing $package."
  fi
}

ask_to_install python3
