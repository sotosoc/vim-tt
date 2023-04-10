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

let b:current_syntax = "tt"
