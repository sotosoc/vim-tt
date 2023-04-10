if has("folding")
  setlocal foldmethod=marker
endif

":colorscheme bible

:set textwidth=0
:set iskeyword=@,48-57,192-255,_,-
:set nowrapscan
:set scrolloff=0
:set guifont=inconsolata\ 12

" Header Line
:match StatusLine /\v^.*, H$/

" DONE --- YES
:2match Question /\v^\d+ , \zs<..._\d{3}_\d{3}>\ze ,.*, Y$/

" DONE --- NO
:3match WarningMsg /\v^\d+ , \zs<..._\d{3}_\d{3}>\ze ,.*, N$/
