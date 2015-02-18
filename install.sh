#!/bin/sh

current=`pwd`
bundle_path=$current/bundle

bundles=(
    "https://github.com/tpope/vim-pathogen.git"
    "https://github.com/Lokaltog/vim-powerline.git"
    "https://github.com/scrooloose/nerdtree.git"
    "https://github.com/plasticboy/vim-markdown.git"
    "https://github.com/c9s/colorselector.vim.git"
    "https://github.com/msanders/snipmate.vim.git"
)

echo "create bundle folder: ${bundle_path}"
mkdir -p $bundle_path
cd ${bundle_path}

for i in "${bundles[@]}"
do
    #bundle=$bundle_path/$i
    #echo $bundle
    #if [ -d "${bundle}" ]; then
    #    echo "Clone: $i"
        git clone $i
    #fi
done


#$current/uninstall.sh

if [ -e "~/.vim" ]; then
   mv ~/.vim ~/.vim.bak-1
fi
if [ -e "~/.vimrc" ]; then
   mv ~/.vimrc ~/.vimrc.bak-1
fi

cd ~ 
ln -s $current ~/.vim
ln -s $current/vimrc ~/.vimrc


echo "Done"
