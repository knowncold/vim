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

colorscheme molokai

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
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required
let g:rainbow_active = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' 
let g:rehash256 = 1
let g:molokai_original=1

let g:airline_powerline_fonts=1

nnoremap <F5>  <Esc>:w<CR>:!g++ -std=c++11 % -o ./%:r && ./%:r<CR>
nnoremap <F7>  <Esc>:w<CR>:!g++ -std=c++11 %<CR>

