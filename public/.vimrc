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

set encoding=utf-8
set laststatus=2
let g:Powerline_symbols='fancy'

let g:SuperTabSetDefaultCompletionType='context'

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

filetype plugin on

if has("python")
  nnoremap <F11> :GundoToggle<CR>
endif

let g:NERDTreeMinimalUI=1
nnoremap <F12> :NERDTreeToggle<CR>
