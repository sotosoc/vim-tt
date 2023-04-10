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

"-------------------------------------------------------------------------------
" Comments start with a pound sign (possibly after spaces)
"-------------------------------------------------------------------------------
syntax match ttComment /\v^ *#.*$/ contains=ttNotes,ttHashTag
highlight link ttComment Comment

syntax match ttHeader /\v^.*, H$/
highlight link ttHeader StatusLine

" DONE --- YES
syntax match ttYes /\v^\d+ , \zs<..._\d{3}_\d{3}>\ze ,.*, Y$/
highlight link ttYes Question

" DONE --- NO
syntax match ttNo /\v^\d+ , \zs<..._\d{3}_\d{3}>\ze ,.*, N$/
highlight link ttNo WarningMsg

let b:current_syntax = "tt"
