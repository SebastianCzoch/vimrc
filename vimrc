let s:vimdir = fnamemodify($MYVIMRC, ':p:h') " Not necessarily correct
if empty(glob(s:vimdir . '/autoload/plug.vim'))
      execute 'silent !curl -fsLo ' s:vimdir . '/autoload/plug.vim --create-dirs' 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugins')
runtime plugins.vim
call plug#end()

" turn off modelines to prevent securuty vulnerability
set modeline
" always show status line
set laststatus=2
" set encoding to utf-8
set encoding=utf-8
" lots of cool vim things
set nocompatible
" more powerfull backspace
set backspace=2
" keep 200 lines of command history
set history=200
" show cursor position all the time
set ruler
" files with lower priority
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" show currently typed command
set showcmd
" copyindent from prev line
set autoindent
" spaces instead of tab character
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
" mouse support
set mouse=a
" line numbers
set number
" ignore case and smartcase
set ignorecase
set smartcase
" incremental search and highlight
set incsearch
set hlsearch
" command line autocomplete
set wildmenu
set wildmode=longest,list:longest
" set paste / set nopaste toggle
set pastetoggle=<F2>
" highlight current line
set cursorline
set tabstop=4
colorscheme jellybeans

"""""""""""""""""""""""""""""""""""""""""""
" MAPPING
"""""""""""""""""""""""""""""""""""""""""""

nnoremap ; :

" Redo
nnoremap r :redo<cr>

" Map the new <leader>
let mapleader = ','

" Buffers from other programs (Ctrl+c and Ctrl+v)
nnoremap <leader>p "+gp
nnoremap <leader>y "+yy

vnoremap <leader>y "+y
vnoremap <leader>p "+gp

" Select all. Same as Ctrl+a
nnoremap <leader>a ggVG

" Moving between buffers 
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Moving between tabs
nnoremap tl gt
nnoremap th gT

nnoremap <C-e> :NERDTreeToggle<cr>


