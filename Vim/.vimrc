syntax enable
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

map <F12> :NERDTreeToggle<CR>


au BufNewFile,BufRead *.handlebars set filetype=html


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
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()            " required
filetype plugin indent on    " required
let g:rainbow_active=1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' 
let g:ycm_python_binary_path = 'python'
let g:rehash256 = 1
let g:molokai_original=1

let g:indentLine_setColors = 0
let g:indentLine_color_term = 23
let g:indentLine_char = '|'


let g:airline_powerline_fonts=1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

func! RunCode()
	exec "w"
	if &filetype == "cpp"
		exec "!g++ -std=c++11 % -o %:r && ./%:r"
	elseif &filetype == "arduino"
		exec "!arduino --upload %"
	elseif &filetype == "python"
		exec "!python %"
	elseif &filetype == "racket"
		exec "!racket %"
	elseif &filetype == "dot"
		exec "!dot -Tpdf ./% -o /%:r.pdf"
	elseif &filetype == "c"
		exec "!gcc % -o ./%:r && ./%:r"
	elseif &filetype == "javascript"
		exec "!node %"
	elseif &filetype == "make"
		exec "!make"
	elseif &filetype == "markdown"
		exec "!jekyll serve"
	endif
endfunc

func! CompileCode()
	exec "w"
	if &filetype == "arduino"
		exec "!arduino --verify %"
	elseif &filetype == "cpp"
		exec "!g++ -std=c++11 %"
	elseif &filetype == "dot"
		exec "!dot -Tgif ./% -o ./%:r.gif"
	elseif &filetype == "make"
		exec "!make clean"
	endif
endfunc

func! RunMake()
	exec "w"
	exec "!make"
endfunc

nnoremap <F5> :call RunCode()<CR>
nnoremap <F7> :call CompileCode()<CR>
nnoremap <F6> :call RunMake()<CR>
