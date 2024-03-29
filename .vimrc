"
" !!! AR's vimrc !!!
"
set nocompatible
filetype off

"
" !!! basic settings !!!
"
set backspace=indent,eol,start
set history=50
set autoindent
set smartindent
set softtabstop=2
set expandtab
set nobackup
set modeline
syntax on

"
" !!! ui !!!
"
set ruler
set showcmd
set incsearch
set hlsearch
set laststatus=2
set showtabline=2
" set cursorcolumn
set cursorline
hi cursorline gui=UNDERLINE cterm=UNDERLINE

" remove all trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif


"
" !!! key bindings !!!
"

" normal mode
nmap <SPACE> <SPACE>:noh<CR>
set clipboard=exclude:.*
color ron
