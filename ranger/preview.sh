#!/bin/sh
# Preview script built for use with lf and fzf
LINES=30
case "$1" in
    *.png|*.jpg|*.jpeg) mediainfo "$1";;
   *.webm|*.flac|*.opus|*.avi| *.mkv|*.mp4|*.m4a|*.mp3) mediainfo "$1";;
    *.iso|*.img) mediainfo "$1";;
    *.v64|*.z64) mediainfo "$1";;
    *.md) glow -s dark "$1";;
    *.pdf) pdftotext "$1" -;;
    *.zip) zipinfo "$1";;
    *.tar.gz) tar -ztvf "$1";;
    *.tar.bz2) tar -jtvf "$1";;
    *.tar) tar -tvf "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.html|*.xml) bat "$1";;
    *.zsh*|*.bash*|*.git*| *.md*) bat "$1";;
    *) highlight "$1" -O ansi --force;;
esac
