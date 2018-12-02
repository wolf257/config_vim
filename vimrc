"return" 2>&- || "exit"
" To avoid problems when sourcing

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Initialize plugin system
call plug#begin()

"PACKAGE
Plug 'tomtom/tcomment_vim'
    " LIGHTLINE
Plug 'itchyny/lightline.vim'
 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }
      
:set laststatus=2
set noshowmode

Plug 'sheerun/vim-polyglot'

call plug#end()


let mapleader = ','


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible              " required
"filetype off                  " required

"GENERAL
"set cursorline  "highlight current line
set mouse=a "Activer la souris


"COLORS
syntax on "coloration syntaxique
set colorcolumn=120 "color the line if to long
set showmatch "highlight matching [{()}]
set showcmd "show command

"NUMBERING
"set number   "show line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"SPACE AND TABS
"Conserve l'indentation courante sur les nouvelles lignes
set autoindent
"Conversion des tabulations en espaces 
set expandtab 
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

filetype indent on

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
" Autosave when switching buffers
set autowrite

"SEARCH
set incsearch "search as characters are entered
set hlsearch "highlight matches
set ignorecase

"NATIVE FILE EXPLORER
" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3


" MAPPING
map ; : 
inoremap jj <ESC>
map <CR> o<Esc>k

