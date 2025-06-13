#!/bin/bash

RED=$(tput setaf 001)
GREEN=$(tput setaf 117)
BLUE=$(tput setaf 033)
PURPLE=$(tput setaf 141)
PINK=$(tput setaf 204)
NC=$(tput sgr0) # Restore color of terminal

logo='
       ██████████████                   ██████████████
░░░░░░  ██████████████                 ██████████████
░░░░░░░  ██████████████               ██████████████
████████  ██████████████             ██████████████
░░░░░░░    ██████████████           ██████████████
 ░░░░░░░    ██████████████         ██████████████
████████░░   ██████████████       ██████████████
              ██████████████     ██████████████
               ██████████████   ██████████████
 ████████       ██████████████ █████████████
                 ██████████████████████████
 ████████         ████████████████████████
       ▒▒▒▒▒▒▒▒▒▒▒▒██████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
'
# Display logo and title
echo -e "${GREEN}${logo}${NC}"
echo -e "${GREEN}Welcome to the dot-Vimc Auto Install!${NC}"

# Check if wezterm is installed or not
if ! command -v wezterm &> /dev/null; then
  # Check package manager and install WezTerm accordingly
  echo "WezTerm terminal not installed"
  if command -v apt &> /dev/null; then
    sudo apt update
    sudo apt install -y wezterm
  elif command -v brew &> /dev/null; then
    brew install --cask wezterm
  elif command -v dnf &> /dev/null; then
    sudo dnf install -y wezterm
  else
    echo "Unsupported package manager. Please install WezTerm manually"
    exit 1
  fi
else
  echo "Wezterm is already installed on your system"
  exit 1
fi

# Copy .wezterm.lua to the approipate location
echo "Copying .wezterm.lua configuration file..."
WEZTERM_CONFIG_DIR="$HOME/.config/wezterm"
mkdir -p "$WEZTERM_CONFIG_DIR"
cp "$(dirname "$0")/.wezterm.lua" "$WEZTERM_CONFIG_DIR/wezterm.lua"
