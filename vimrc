runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

syntax on
filetype plugin indent on

filetype indent on
filetype on
au BufRead,BufNewFile *.erb set filetype=ruby
au BufRead,BufNewFile *.scss set filetype=css
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4
autocmd FileType javascript setlocal ts=4 sts=0 sw=4 noexpandtab

set clipboard=unnamed

set backspace=indent,eol,start
set backupskip=/tmp/*,/private/tmp/*
set stmp

au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4 tw=79

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

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
