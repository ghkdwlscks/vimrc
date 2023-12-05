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
        \ execute "normal g`\"" |
    \ endif

function! Isort()
    let l:winview = winsaveview()
    execute ":silent %!isort -"
    call winrestview(l:winview)
endfunction

autocmd BufWritePre *.py call Isort()

function! Yapf()
    let l:winview = winsaveview()
    execute ":silent %!yapf"
    call winrestview(l:winview)
endfunction

autocmd BufWritePost *.py call Yapf()
