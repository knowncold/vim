set nocompatible
" set the language of gui
let $LANG = 'en'  "set message language  
set langmenu=en   "set menu's language of gvim. no spaces beside '='  
set helplang=cn   "set the help langauge as Chinese
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

syntax enable
syntax on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

" 禁止折行
set nowrap
" 设置缩进宽度
set shiftwidth=4
set tabstop=4 
set softtabstop=4 
set autoindent 
" 配色
set background=dark
"molokai style
colorscheme molokai


" 状态栏
set laststatus=2
" 显示行列
set cursorline
set cursorcolumn
" 高亮搜索
set hlsearch
" 显示行号
set number
set numberwidth=4
" 显示光标
set ruler
" 设置映射
map <c-k> dd2kp
map <c-j> ddp

" vundle
filetype off  
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
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
filetype plugin indent on    " required

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

"======================
" YouCompleteMe
"======================
set completeopt=longest,menu                 " 关掉补全时的预览窗口
let g:ycm_complete_in_comments = 1                " 评论中也应用补全


autocmd BufWritePost $MYVIMRC source $MYVIMRC

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


set guifont=YaHei\ Consolas\ Hybrid:h13
echom ">^.^<"
