if exists("b:current_syntax")
  finish
endif

"-------------------------------------------------------------------------------
" TT names can be hyphenated
"-------------------------------------------------------------------------------
setlocal iskeyword+=-

"-------------------------------------------------------------------------------
" TT is case-sensitive
"-------------------------------------------------------------------------------
syntax case match

"-------------------------------------------------------------------------------
" Notes within comments
"-------------------------------------------------------------------------------
syntax keyword ttNotes NOTE REFER STARTHERE TODO TODONE contained
highlight link ttNotes Todo

syntax match ttHashTag /\v#([A-Za-z]+)+/
highlight link ttHashTag Define

syntax match ttError /\v<000000>/ contained
highlight link ttError Error

"-------------------------------------------------------------------------------
" Comments start with a pound sign (possibly after spaces)
"-------------------------------------------------------------------------------
syntax match ttComment /\v^ *#.*$/ contains=ttNotes,ttHashTag
highlight link ttComment Comment

"-------------------------------------------------------------------------------
" Visual formatting of the file
"-------------------------------------------------------------------------------
syntax match ttHeader /\v^.*, H$/
highlight link ttHeader StatusLine

" DONE --- YES
syntax match ttYes /\v^\d+ , <..._\d{3}_\d{3}> ,.*, Y$/ contains=ttError
highlight link ttYes Function

" DONE --- NO
syntax match ttNo /\v^\d+ , <..._\d{3}_\d{3}> ,.*, N$/ contains=ttError
highlight link ttNo String

let b:current_syntax = "tt"
