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
set clipboard=unnamed

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Yankring
let g:yankring_history_dir = '~/.vim'

set wildignore+=*~,*#

" Auto adjust bars
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" Set colorscheme
colorscheme railscasts

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Commands
command! Done edit ~/Dropbox/PlainText/TravelPartner/Done.txt
command! Todo edit ~/Dropbox/PlainText/TravelPartner/Todo.txt

" Autocommands
autocmd BufWritePre *.rb,*.js,*.erb,*.feature %substitute/ / /ge " Remove nbsp
autocmd User Rails silent! Rlcd " Rails plugin

" Highlight tabs and trailing whitespace (except on end of line)
match ErrorMsg /\s\+\%#\@<!$\|\t\+/
autocmd InsertLeave * redraw!

" REST OF FILE CONTAINS MAPPINGS
let mapleader = ","

map <left> :bprevious<CR>
map <right> :bnext<CR>

" ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'

" NERDTree
map <silent> <Leader>n :NERDTreeToggle<CR>

" Remap jump to tag
map <silent> å <C-]>

" Delete trailing space
map <silent> <Leader>s m`:%s/\s\+$//<CR>``

" Cucumber
map <silent> <Leader>c :!bundle exec cucumber %:=line('.')<CR> -f html\|bcat -h -T %<CR>
map <silent> <Leader>C :!bundle exec cucumber % -f html\|bcat -h -T %<CR>

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
