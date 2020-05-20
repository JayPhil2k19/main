#! /bin/sh
cd ~/Documents/Jung-collected-works && ls *.pdf | sort -n | fzf | xargs -r zathura
