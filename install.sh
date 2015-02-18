#!/bin/sh

current=`pwd`
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


if [ -e ~/.vim ]; then
    mv ~/.vim ~/.vim.bak-1
fi
if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/vimrc.bak-1
fi

ln -s $current ~/.vim
ln -s $current/vimrc ~/.vimrc
