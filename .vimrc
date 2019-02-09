filetype plugin on
filetype indent on

syntax enable

set autoindent
set autoread
set expandtab
set hlsearch
set ignorecase
set incsearch
set linebreak
set nocompatible
set number
set shiftwidth=2
set smartcase
set smartindent
set smarttab
set splitright
set tabstop=2
set textwidth=500
set timeoutlen=1000
set ttimeoutlen=0
set wildignore+=node_modules/*,bower_components/*
set wrap

let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_winsize = 20

nnoremap <C-@> :Buffers<CR> " Ctrl-Space
nnoremap <C-f> :Ag<CR>
nnoremap <C-g> :GFiles<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k


" --- Plugins ---
call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'purescript-contrib/purescript-vim'

call plug#end()

" Make Elm work with YouCompleteMe
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

let g:elm_format_autosave = 1

