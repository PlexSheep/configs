" GENERAL CONFIGS ----------------------------------------------------------------------------------
syntax on                   " syntax highlighting
set nocompatible            " disable compatibility to old-time vi
set number
set nocompatible
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tab stops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for auto indents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 100 column border for good coding style
set mouse=a                 " enable mouse for help file editing and hitting prompts
set cursorline              " highlight current cursor line
set ttyfast                 " Speed up scrolling in Vim
set fdm=indent              " folding method syntax
set foldlevel=10            " only fold when a certain complexity is reached by default.
                            " This applies only at startup.
set numberwidth=4           " How much space the line numbers should take
set signcolumn=yes          " Show extra icons in the line numbers (like git marks, errors)
set timeout timeoutlen=400  " How long to wait for non prefix free hotkey melodies
set ttimeoutlen=0

" Avoid showing message extra message when using completion 
set shortmess+=c

"allow auto-indenting depending on file type
filetype plugin indent on   
filetype plugin on


let g:indentLine_char = '│'

" HOTKEYS ------------------------------------------------------------------------------------------
" add lines with double o
noremap oo o<ESC>
noremap OO O<ESC>

" H and L for end and beginning
nmap H ^
nmap L $
vmap H ^
vmap L $

" useful functions for arrow keys
" (and force the user to use `hjkl`)

" right/left to add/remove a tab in the beginning of the line.
nmap <Left> <<
nmap <Right> >>
" same for visual mode (plus reselecting stuff for visual mode)
vmap <Left> <gv
vmap <Right> >gv

" up and down move lines up and down
nmap <Up> :m -2<CR>
nmap <Down> :m +1<CR>
" same for visual mode (plus reselecting stuff for visual mode)
vmap <Up> :m -2<CR>
vmap <Down> :m +1<CR>

" resize windows
nnoremap <C-Left> :vertical resize -1<CR>
nnoremap <C-Right> :vertical resize +1<CR>
nnoremap <C-Up> :resize -1<CR>
nnoremap <C-Down> :resize +1<CR>

" hit F3 to toggle search highlighting"
nnoremap <F3> :set hlsearch!<CR> 

nnoremap <SPACE> <Nop>
let mapleader=" "
map <leader>t :echo "leader tested!"<CR>
map <leader>h :noh<CR>
let maplocalleader=","

" copy to Wayland clipboard when leader is used. (note, install gvim for this)
vnoremap  <leader>wy  y :call system("wl-copy", @")<CR>
nnoremap  <leader>wY  Y :call system("wl-copy", @")<CR>
nnoremap  <leader>wy  y :call system("wl-copy", @")<CR>
nnoremap  <leader>wyy yy :call system("wl-copy", @")<CR>

" copy to system clipboard when leader is used. (note, install gvim for this)
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+Y
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" don't write the pasted upon stuff in visual mode into the register
vnoremap p pgvy

" open terminal with F12
nnoremap <F12> :terminal<CR>

" vsplit with <Leader>, then "
map <Leader>" :vsplit<CR>

" split with <Leader>, then %"
map <Leader>% :split<CR>

" join with <leader>j
nnoremap <leader>j :join<CR>
" join up with <leader>J
nnoremap <leader>J :move .-2<CR> :join<CR>

" split lines with <leader>s
nnoremap <leader>s i<CR><ESC>
" split lines up with <leader>S
nnoremap <leader>S i<CR><ESC> V:m -2<CR>

" move screen a line up/down with alt U/D
nmap <A-u> kzz
nmap <A-d> jzz

" spell checking -----------------------------------------------------------------------------------
set spell spelllang=en

" set a location
set spellfile=~/.config/nvim/spell/en.utf-8.add

" go to last or next misspelled word
nnoremap zn ]s
nnoremap zN [s

" same as above but only with bad words (unrecognized)
nnoremap Zn ]S
nnoremap ZN [S

" mark correct with zg, mark bad with zw, undo with zug/zuw

" fancy fzf correct with zc, default is z= but that sucks for qwertz keyboards
function! FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction
function! FzfSpell()
  let suggestions = spellsuggest(expand("<cword>"))
  return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'down': 10 })
endfunction
nnoremap z<space> :call FzfSpell()<CR>

" don't make things written as `something` a typo
syntax region cBackTickNoSpell start=+`+ end=+`+
    \ contained containedin=cComment,cCommentL transparent
    \ contains=@NoSpell

" don't make lines starting with `//!` a typo (used by rust docs)
syntax region cRusDocCommentNoSpell start=+//!+ end='\z1' contained extend
    \ contained containedin=cComment,cCommentL transparent
    \ contains=@NoSpell
