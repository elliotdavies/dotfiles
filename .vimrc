filetype plugin on
filetype indent on

syntax enable
autocmd BufRead *.svelte set syntax=html

set autoindent
set autoread
set colorcolumn=80
set cursorline
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

highlight ColorColumn ctermbg=0

nnoremap <C-@> :Buffers<CR> " Ctrl-Space
nnoremap <C-f> :Ag<CR>
nnoremap <C-g> :GFiles<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k


call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'vmchale/dhall-vim'

call plug#end()
