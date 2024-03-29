filetype plugin on
filetype indent on

syntax enable
autocmd BufRead *.svelte set syntax=html
" Use new regex engine to avoid slow syntax highlighting
set re=0

set autoindent
set autoread
set backspace=indent,eol,start
set colorcolumn=81
set cursorline
set expandtab
set hlsearch
set ignorecase
set incsearch
set linebreak
set nocompatible
set number
set shiftwidth=2
set signcolumn=number
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set timeoutlen=1000
set ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile
set wildignore+=node_modules/*,bower_components/*
set wrap

highlight ColorColumn ctermbg=8
highlight PmenuSel ctermbg=40
highlight link CocMenuSel PmenuSel

" :Ggrep but relative to the cwd
function! GgrepCwd()
  call inputsave()
  let query = input(":Ggrep ")
  call inputrestore()
  echo "\n"
  execute ":Ggrep ".query." ."
endfunction

nnoremap <C-@> :Buffers<CR>
nnoremap <C-f> :GFiles<CR>
nnoremap <C-g> :call GgrepCwd()<CR>
nnoremap <esc><esc> :noh<CR>

" Show docs / definitioms via Coc
nnoremap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" Use <tab> for Coc trigger completion
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

" By default Netrw refreshes on <C-l>, which interferes with navigation
nnoremap <unique> <C-p> <Plug>NetrwRefresh

let vim_markdown_preview_github=1

" By default clang-format is enabled for JS/JSX/TS/TSX files and will be run if
" Prettier fails, which is never what we want.
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_javascriptreact = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_typescriptreact = ['prettier']

let g:neoformat_typescriptreact_prettier = {
      \ 'exe': 'yarn',
      \ 'args': ['exec', 'prettier', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
      \ 'stdin': 1,
      \ }


call plug#begin('~/.vim/plugged')

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" TS language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

call plug#end()
