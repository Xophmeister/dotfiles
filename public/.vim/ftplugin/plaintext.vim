" We want hard wrapped plain text
setlocal textwidth=72
setlocal formatoptions=tcroqan1j

" Remove wrapping for Python "requirements.txt" files
autocmd BufRead,BufNewFile requirements.txt setlocal formatoptions=croj
