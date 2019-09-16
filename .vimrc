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
set splitbelow
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
nnoremap <esc><esc> :noh<CR>

" By default Netrw refreshes on <C-l>, which interferes with navigation
nnoremap <unique> <C-p> <Plug>NetrwRefresh

let vim_markdown_preview_github=1

call plug#begin('~/.vim/plugged')

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'

call plug#end()
