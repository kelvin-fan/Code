set encoding=utf-8
set background=dark

" Enable tab completion
set wildmenu
set wildmode=list:longest,full

set backspace=2      " MUST: o/w backspace may do sth else
set number
set ruler
set cursorline
                   
set tabstop=3        " 1 x tab = 3 spaces (BUT not replacing tab with space)       
set shiftwidth=3     " doing indentation when using '>' or '<'
set expandtab        " tab => space(s)

" set which side new split window appears
set splitbelow
set splitright

" Smart way to move between windows
"nnoremap <C-j> <C-W>j
"nnoremap <C-k> <C-W>k
"nnoremap <C-h> <C-W>h
"nnoremap <C-l> <C-W>l

syntax enable
colorscheme molokai

" -----------------------------------------------

" Vim plugin
call plug#begin('~/.vim/plugged')

   Plug 'yuezk/vim-js'
   Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" Usually put the below command at the bottom
filetype indent off

