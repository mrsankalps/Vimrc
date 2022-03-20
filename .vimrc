set relativenumber
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


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

