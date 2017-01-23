let g:syntastic_c_check_header = 1
map <F10> :!ctags -R -f ~/.vim/tags/c /usr/include /usr/local/include ~/local/include<CR>
set tags+=$HOME/.vim/tags/c
