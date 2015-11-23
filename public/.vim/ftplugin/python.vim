if (exists("$VIRTUAL_ENV"))
  map <F10> :!ctags -R -f $VIRTUAL_ENV/tags $VIRTUAL_ENV/lib/python*/site-packages<CR>
  set tags+=$VIRTUAL_ENV/tags
endif
