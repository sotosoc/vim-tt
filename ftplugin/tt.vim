if has("folding")
  setlocal foldmethod=marker
endif

set textwidth=0
set iskeyword=@,48-57,192-255,_,-
set nowrapscan
set scrolloff=0
setlocal suffixesadd+=.txt
setlocal commentstring=#\ %s

nnoremap gf :e      $MERE/notes/<cfile>.txt<CR>
nnoremap gF :vsp    $MERE/notes/<cfile>.txt<CR>
nnoremap g, :tabnew $MERE/notes/<cfile>.txt<CR>

nnoremap ,, $rY
