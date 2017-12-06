" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'digitaltoad/vim-pug'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line q
call vundle#end()      " required
filetype off
" Put your non-Plugin stuff after this line
set relativenumber
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
set smartindent
set encoding=utf-8
set backspace=indent,eol,start
colorscheme monokai
"let g:rehash256 = 1
set t_Co=256

"set background=dark
"set term=screen-256color " this line should maybe be deleted when upgrading to 16.04
"set t_ut= " this line should maybe be deleted when upgrading to 16.04
" autocmd VimEnter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

