execute pathogen#infect()

syntax on
filetype plugin indent on

" CommandT stuff
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>c :CommandTFlush<CR>

" toggle hlsearch
nnoremap <C-H> :set hlsearch! hlsearch?<CR>

" quick escape
inoremap jj <ESC>

" easier traversal of vim windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" multiple indents without losing highlight
vnoremap < <gv
vnoremap > >gv

" move around huge lines more naturally
nnoremap j gj
nnoremap k gk

set exrc
set secure

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set copyindent
set laststatus=2
set showmatch
set incsearch
set ruler
set cursorline
set hidden
set nohlsearch

hi CursorLine term=bold cterm=bold ctermbg=DarkGrey

filetype indent on
filetype on

" handle related files
au BufRead,BufNewFile *.erb     set filetype=ruby
au BufRead,BufNewFile *.scss    set filetype=css
au BufRead,BufNewFile *.json    set ft=javascript
au BufRead,BufNewFile *.ctp     set ft=php

" formatting by filetype
au FileType python,php setlocal ai ts=4 sw=4 sts=4 tw=80 et
au Filetype ruby,yaml,haml,html,sass,javascript,css setlocal ai ts=2 sts=2 sw=2 et

" copy and paste with the system clipboard
set clipboard=unnamed

" retain formatting for text pasted into vim
set paste

set backspace=indent,eol,start
set backupskip=/tmp/*,/private/tmp/*
set stmp

set visualbell
" turn off error bells
set noerrorbells

" history
set history=1000
set undolevels=1000

" turn off swapfiles
set nobackup
set noswapfile

" visualize whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" except for html files
" au filetype html,xml set listchars-=tab:>.

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

syntax enable
set background=dark
" let g:solarized_termtrans = 1
" colorscheme solarized

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
