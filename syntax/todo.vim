" Vim syntax file
" Maintainer:   Mark Harrison <mark@mivok.net>
" Last Change:  Feb 4, 2011
" License:      ISC - See LICENSE file for details

" au BufRead,BufNewFile todo.txt,*.todo.txt set filetype=todo

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match       todoProject     /+\S\+/
syn match       todoContext     /@\S\+/
syn match       todoPriority    /([A-Z])/
syn match       todoDone        /^\s*\[\?[xX]\]\?\s.*/

syn match       todoURI         /\w\+:\/\/\S\+/
syn match       todoEmail       /\S\+@\S\+\.\S\+/

hi def link     todoProject     Statement
hi def link     todoContext     Identifier
hi def link     todoPriority    Special
hi def link     todoDone        Comment

hi def link     todoURI         String
hi def link     todoEmail       String

let b:current_syntax = "todo"
