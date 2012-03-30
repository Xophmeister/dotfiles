set nocompatible

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
  
  colorscheme wombat
  set guioptions=mLrbtT
else
  set t_Co=256
  colorscheme wombat256
endif

set number
set nowrap
set spell spelllang=en_gb
set cc=72
set hlsearch
set incsearch
set wildmenu

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
set autoindent

set cursorline

set ar
set si

set encoding=utf-8

filetype plugin on
