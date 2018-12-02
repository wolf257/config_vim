let mapleader=" "

"GENERAL
"set cursorline  "highlight current line
set mouse=a "Activer la souris


"COLORS
syntax on "coloration syntaxique
filetype on
set colorcolumn=120 "color the line if to long

"NUMBERING
"set number   "show line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


set showmatch "highlight matching [{()}]
set showcmd "show command

