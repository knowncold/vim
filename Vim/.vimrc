set number

set nowrap

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set background=dark

set laststatus=2

set cursorcolumn
set numberwidth=4
set ruler

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'
Bundle 'wakatime/vim-wakatime'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'vimcn/vimcdoc'
Plugin 'php.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'luochen1990/rainbow'
Bundle 'wlangstroth/vim-racket'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' 

