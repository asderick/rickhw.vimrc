

" ## vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#infect()
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()


" ## vim-powerLine
" let g:Powerline_symbols = 'fancy'
"set nocompatible        " Disable vi-compatibility
set laststatus=2        " Always show the statusline
set encoding=utf-8      " Necessary to show Unicode glyphs


" ## vim settings
set tabstop=4           " Set width of a TAB to 4
set shiftwidth=4        " Indents will have a width of 4
set softtabstop=4       " Sets the number of column for a TAB
set expandtab           " Expand TABs to spaces
set nu                  " show line number


" ## Open NERDTree
" autocmd VimEnter * NERDTree


" ## vim-markdown
" let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1
" let g:vim_markdown_folding_disabled=1

