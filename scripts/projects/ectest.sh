#!/bin/bash

# Define color escape codes
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
COLOR_CYAN='\033[0;36m'
COLOR_NC='\033[0m' # No Color

# Print colored text with echo
echo -e "${COLOR_RED}This is red text${COLOR_NC}"
echo -e "${COLOR_GREEN}This is green text${COLOR_NC}"
echo -e "${COLOR_YELLOW}This is yellow text${COLOR_NC}"
echo -e "${COLOR_CYAN}This is cyan text${COLOR_NC}"

