" We want hard wrapped plain text (except for "requirements.txt")
if expand('%:t') != 'requirements.txt'
  setlocal textwidth=72
  setlocal formatoptions=tcroqan1j
endif
