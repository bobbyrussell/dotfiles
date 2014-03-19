execute pathogen#infect()

syntax on
filetype plugin indent on

" CommandT stuff
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>c :CommandTFlush<CR>

" toggle hlsearch
nnoremap <C-H> :set hlsearch! hlsearch?<CR>

inoremap jj <ESC>

" easier traversal of vim windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set ruler
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=DarkGrey

filetype indent on
filetype on

" handle related files
au BufRead,BufNewFile *.erb set filetype=ruby
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.ctp set ft=php

" formatting
au FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 tw=80
au Filetype ruby,yaml,haml,html,sass,javascript,css setlocal ai ts=2 sts=2 sw=2 et
au FileType php setlocal ts=4 sts=4 sw=4 et

" copy and paste with the system clipboard
set clipboard=unnamed

set backspace=indent,eol,start
set backupskip=/tmp/*,/private/tmp/*
set stmp

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set background=dark
set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

set nu

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
