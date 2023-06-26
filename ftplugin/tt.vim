if has("folding")
  setlocal foldmethod=marker
endif

set textwidth=0
set iskeyword=@,48-57,192-255,_,-
setlocal suffixesadd+=.txt
setlocal commentstring=#\ %s

match Error /\v<000000>/
