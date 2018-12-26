" Enable filetype plugins
filetype plugin on
filetype indent on

" Always show numbers
set number

" Set to auto read when a file is changed from the outside
set autoread

" Enable syntax highlighting
syntax enable

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set hls "Highlight search results

set timeoutlen=1000 ttimeoutlen=0

" --- Plugins ---
call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'
Plug 'godlygeek/tabular'
Plug 'sbdchd/neoformat'

call plug#end()

" Make Elm work with YouCompleteMe
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

let g:elm_format_autosave = 1

