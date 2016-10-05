" 开启文件类型侦测
filetype on
" 根据不同类型来加载对应的插件
filetype plugin on

" 定义快捷键
let mapleader=";"

nmap LB 0
nmap LE $

" 设置文本块复制到系统剪贴板
vnoremap <Leader>y "+y
nmap <Leader>p "+p



set number

set nowrap

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set background=dark

set laststatus=2

set cursorcolumn
set cursorline

" colorscheme solarized

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
Plugin 'ternjs/tern_for_vim'

call vundle#end()            " required
filetype plugin indent on    " required
let g:rainbow_active = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' 

