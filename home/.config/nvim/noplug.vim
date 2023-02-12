syntax on                   " syntax highlighting

set nocompatible            " disable compatibility to old-time vi
set mouse=v                 " middle-click paste with 
set number
set nocompatible
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 100 column border for good coding style
set mouse=a                 " enable mouse click
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set fdm=syntax              " foldingmethod syntax
set foldlevel=10            " only fold when a certain complexity is reached by default. This applies only at startup.
"set spell                 " enable spell check (may need to download language package)
set timeout timeoutlen=400

" Avoid showing message extra message when using completion"
set shortmess+=c

filetype plugin indent on   "allow auto-indenting depending on file type
filetype plugin on


" let g:indentLine_setColors = 0
let g:indentLine_char = '│'

" set timeout to wait for shortcuts with a prefix
noremap oo o<ESC>
noremap OO O<ESC>

" hit f3 to toggle search highlighting"
nnoremap <F3> :set hlsearch!<CR> 

nnoremap <SPACE> <Nop>
let mapleader=" "
map <leader>t :echo "leader tested!"<CR>
map <leader>h :noh<CR>

" copy to wayland clipboard when leader is used. (note, install gvim for this)
vnoremap  <leader>wy  y :call system("wl-copy", @")<CR>
nnoremap  <leader>wY  Y :call system("wl-copy", @")<CR>
nnoremap  <leader>wy  y :call system("wl-copy", @")<CR>
nnoremap  <leader>wyy yy :call system("wl-copy", @")<CR>

" copy to system clipboard when leader is used. (note, install gvim for this)
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+Y
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" open terminal with F12
nnoremap <F12> :terminal<CR>

" automatically set closed braces aswell when making opened ones.
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

" vsplit with <Leader>, then "
map <Leader>" :vsplit<CR>

" split with <Leader>, then %"
map <Leader>% :split<CR>

" automatically enter insert mode on new neovim terminals
augroup terminal
  au TermOpen * startinsert
augroup END

" enter normal mode from terminal-emulator with <C-w>
inoremap <C-w> <Esc>
tnoremap <C-w> <C-\><C-n>

" :W to write file as root"
command W :SudaWrite

" :E to open file as root"
command E :SudaRead
" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect
" debuging
packadd termdebug

" debuggin for rust
command Rustdebug :let termdebugger="rust-gdb" | :Termdebug
