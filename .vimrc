colorscheme slate

filetype plugin indent on

set autoindent
set cindent
set backspace=eol,indent,start
set expandtab
set hlsearch
set number
set shiftwidth=4
set softtabstop=4
set smartindent
set smarttab
set tabstop=4
set title

syntax on


autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" |
    \ endif

autocmd BufWritePost *.py
    \ :%!isort -

autocmd BufWritePost *.py
    \ :%!yapf
