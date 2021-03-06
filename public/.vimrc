set nocompatible
syntax enable

call pathogen#infect()

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif

  set guioptions=mLrbtT
else
  set term=screen-256color
endif

set background=dark
colorscheme solarized

set number
set nowrap
set spell spelllang=en_gb
set tw=72
set cc=+1
set formatoptions=croqlj
set hlsearch
set incsearch
set wildmenu
set showcmd

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

set scrolloff=2
set cursorline

set autoread
set backspace=indent,eol,start
set mouse=a
set ttymouse=xterm2

set encoding=utf-8
set laststatus=2

set modeline
set modelines=5

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set undofile

set clipboard=unnamed

let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 0    
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2

filetype plugin on

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let mapleader = ","

if has("python")
  nnoremap <F11> :GundoToggle<CR>
endif

" Remove wrapping for Python "requirements.txt" files
autocmd BufRead,BufNewFile requirements.txt setlocal formatoptions=croj

set listchars=tab:→\ ,trail:·
set list
