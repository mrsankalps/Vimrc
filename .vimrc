set nu
set relativenumber
syntax on 
set encoding=utf-8
map <F5> :set spelllang=en spell!
map <F2> :wq
map <F3> :w
colorscheme slate
set guicursor+=v:vCursor
set softtabstop=4
set shiftwidth=4
filetype plugin indent on
set ruler
set nocompatible
filetype plugin on

call plug#begin('~/ .vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


autocmd vimenter * NERDTree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
execute pathogen#infect()


