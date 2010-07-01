call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on
syntax on

runtime! macros/matchit.vim

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set number
set expandtab
set autoread
set incsearch
set ignorecase
set linebreak

" Autocommands
autocmd BufWritePre *.rb,*.js,*.erb %substitute/ / /ge " Remove nbsp
autocmd User Rails silent! Rlcd " Rails plugin

" REST OF FILE CONTAINS MAPPINGS
let mapleader = ","

" ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'

" Remap jump to tag
map <silent> <C-p> <C-]>

" Edit previously edited file
map <silent> <C-t> <C-^>

" Map next/previous error to tab
map <Tab> :cnext<CR>
map <S-Tab> :cprevious<CR>

" Command mode
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-K> <C-E><C-U>

" Underline with = / - with F5 / F6
nnoremap gmu yyp<c-v>$r-:redraw!<CR>
nnoremap gmU yyp<c-v>$r=:redraw!<CR>

" Tab switching
map <D-S-Left> :tabprevious<CR>
map <D-S-Right> :tabnext<CR>
map <D-1> :tabnext 1<CR>
map <D-2> :tabnext 2<CR>
map <D-3> :tabnext 3<CR>
map <D-4> :tabnext 4<CR>
map <D-5> :tabnext 5<CR>
