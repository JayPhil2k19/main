#!/bin/bash

# Define custom colors using ANSI color codes
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
COLOR_CYAN='\033[0;36m'
COLOR_NC='\033[0m' # No Color

# Use fzf with custom colors
fzf --color="hl:${COLOR_RED},fg:${COLOR_GREEN},bg:${COLOR_CYAN},hl+:-1,fg+:-1,bg+:-1,info:${COLOR_YELLOW},pointer:${COLOR_CYAN}"

