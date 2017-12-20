if (exists("$VIRTUAL_ENV"))
  " TODO Do something clever here to load pylint from virtualenv
  map <F10> :!ctags -R -f $VIRTUAL_ENV/tags $VIRTUAL_ENV/lib/python*/site-packages<CR>
  set tags+=$VIRTUAL_ENV/tags
endif

setlocal keywordprg=pydoc

let g:ale_virtualenv_dir_names = [".venv", "venv"]
