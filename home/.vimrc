syntax on

set mouse=v
"set clipboard=unnamedplus
set number
set nocompatible

" set timeout to wait for shortcuts with a prefix
set timeout timeoutlen=200
noremap oo o<ESC>
noremap OO O<ESC>

" F3 to toggle highlight.
let hlstate=0
nnoremap <silent> <F3> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

let mapleader = " " " map leader to space
" copy to system clipboard when leader is used. (note, install gvim for this)
noremap <Leader>y "+y
noremap <Leader>yy "+yy
noremap <Leader>p "+p
noremap <Leader>P "+P
