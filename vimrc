"return" 2>&- || "exit"
" To avoid problems when sourcing

""""""""""""""""""""""""""""""""""""""""""""""""
"            PACKAGES/PLUGGINS
""""""""""""""""""""""""""""""""""""""""""""""""

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

" Plug 'davidhalter/jedi-vim'


Plug 'altercation/vim-colors-solarized'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""
"                   SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""

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
" colorscheme solarized


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

filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
" Autosave when switching buffers
set autowrite

"SEARCH
set incsearch "search as characters are entered
set hlsearch "highlight matches
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>

"NATIVE FILE EXPLORER
" absolute width of netrw window
let g:netrw_winsize = -28
" tree-view
let g:netrw_liststyle = 3
" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'
" open file in a new tab
let g:netrw_browse_split = 3



set lazyredraw          " redraw only when we need to.

" highlight last inserted text
nnoremap gV `[v`]
" It visually selects the block of characters you added last time you were in INSERT mode.

""""""""""""""""""""""""""""""""""""""""""""""""
"                   MAPPING
""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','

" use jj to quickly escape to normal mode while typing <- AWESOME tip
inoremap jj <ESC>

" insert newline without entering insert mode
map <CR> o<Esc>k

" reloads .vimrc -- making all changes active
map <silent> <Leader>v :source ~/.vimrc<CR>:PlugInstall<CR>:bdelete<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Leader C prefix is for code related mappings (completion, tidy, documentation...)
noremap <silent> <Leader>cc :TComment<CR>              "tcomment_vim


" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>


nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>


" GUI (MacVim)
if has('gui_running')
    colorscheme solarized
    set guifont=Courier:h18"
endif

