set nocompatible
syntax enable

call pathogen#infect()

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
  
  set guioptions=mLrbtT
else
  set t_Co=256
  let g:solarized_termcolors=256
endif

set background=dark
colorscheme solarized

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
set laststatus=2
let g:Powerline_symbols='fancy'

filetype plugin on

if has("python")
  nnoremap <F5> :GundoToggle<CR>
endif  
