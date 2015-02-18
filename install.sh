#!/bin/sh

bundles=(
    "https://github.com/tpope/vim-pathogen.git"
    "https://github.com/Lokaltog/vim-powerline.git"
    "https://github.com/scrooloose/nerdtree.git"
    "https://github.com/plasticboy/vim-markdown.git"
    "https://github.com/c9s/colorselector.vim.git"
    "https://github.com/msanders/snipmate.vim.git"
)


cd bundle

for i in "${bundles[@]}"
do
    echo "git clone $i"
done
