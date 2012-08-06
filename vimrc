filetype plugin on
filetype indent on
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

runtime! macros/matchit.vim

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set number
set expandtab
set autoread
set incsearch
set ignorecase
set linebreak
set clipboard=unnamed

" Vundle
Bundle 'Lokaltog/vim-easymotion'
Bundle 'git://git.wincent.com/command-t'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'tjennings/git-grep-vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set wildignore+=*~,*#,public/assets/**

" Set colorscheme
colorscheme railscasts

" Autocommands
autocmd FocusGained * :CommandTFlush
autocmd BufWritePre *.rb,*.js,*.erb,*.feature %substitute/ / /ge " Remove nbsp
autocmd User Rails silent! Rlcd " Rails plugin
autocmd BufRead,BufNewFile *.txt set filetype=markdown

" Highlight tabs and trailing whitespace (except on end of line)
match ErrorMsg /\s\+\%#\@<!$\|\t\+/
autocmd InsertLeave * redraw!

" REST OF FILE CONTAINS MAPPINGS
let mapleader = " "

" Vertical split to alternative file
map <C-w>t <C-w>v<C-w>l:A<CR>

" cnext/prev
map <Left> :copen<CR>
map <Right> :cclose<CR>
map <Up> :cprevious<CR>
map <Down> :cnext<CR>
map <S-Up> :cpfile<CR>
map <S-Down> :cnfile<CR>

" save w/ ctrl-s
map <C-s> :write<CR>
imap <C-s> <Esc>:write<CR>i

" Copy current file and line number to unnamed register ("")
nmap <Leader>l Orspec <Esc>"%pA:<C-R>=line(".")<CR><Esc>0d$"uu

" vim-commentary
xmap ,,  \\
nmap ,,  \\
nmap ,,, \\\

" ZenCoding
let g:user_zen_expandabbr_key = '<c-e>'

" Command-T
map <silent> <Leader>f :CommandTFlush<CR>

" NERDTree
map <silent> <Leader>n :NERDTreeToggle<CR>

" Remap jump to tag
map <silent> å <C-]>

" Delete trailing space
map <silent> <Leader>s m`:%s/\s\+$//<CR>``

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
