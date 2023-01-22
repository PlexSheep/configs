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
"set spell                 " enable spell check (may need to download language package)
set timeout timeoutlen=400

" Avoid showing message extra message when using completion"
set shortmess+=c

" set timeout to wait for shortcuts with a prefix
noremap oo o<ESC>
noremap OO O<ESC>

" hit f3 to toggle search highlighting"
nnoremap <F3> :set hlsearch!<CR> 

nnoremap <SPACE> <Nop>
let mapleader=" "
map <leader>t :echo "leader tested!"<CR>
map <leader>h :noh<CR>

" copy to system clipboard when leader is used. (note, install gvim for this)
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+Y
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" open terminal with F12
nnoremap <F12> :terminal<CR>

" vsplit with <Leader>, then "
map <Leader>" :vsplit<CR>

" split with <Leader>, then %"
map <Leader>% :split<CR>

" :W to save file as root"
command W :w ! sudo tee %
" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect
" packages
packadd termdebug
