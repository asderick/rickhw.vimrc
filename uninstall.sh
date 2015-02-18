#!/bin/sh

links=(
    "~/.vim"
    "~/.vimrc"
    "~/.vim.bak"
    "~/.vimrc.bak"
)

for i in "${links[@]}"
do
    if [ -d "$i" ]; then
        echo $i
    fi
done
