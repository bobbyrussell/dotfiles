execute pathogen#infect()

syntax on
filetype plugin indent on

nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>c :CommandTFlush<CR>

nnoremap <C-H> :set hlsearch! hlsearch?<CR>
inoremap jj <ESC>

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set cursorline

filetype indent on
filetype on

au BufRead,BufNewFile *.erb set filetype=ruby
au BufRead,BufNewFile *.scss set filetype=css
au FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 tw=80
autocmd Filetype ruby,yaml,haml,html,sass,javascript setlocal ai ts=2 sts=2 sw=2 et
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4

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
