
" A .vimrc-like file. At present, very little is supported.
" You can use the commands:
"   inoremap
"   vnoremap
"   nnoremap
"   imap
"   nmap
"   vmap
"   unmap
" Because commands are passed directly to CodeMirror's ViM API,
" insert-mode mappings seem to be unable to insert text.

" HOTKEYS ------------------------------------------------------------------------------------------
" add lines with double o
nnoremap oo o<ESC>
nnoremap OO O<ESC>

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

nnoremap <SPACE> <Nop>
map <SPACE>h :noh<CR>

" copy to system clipboard when space is used. (note, install gvim for this)
vnoremap  <SPACE>y  "+y
nnoremap  <SPACE>Y  "+Y
nnoremap  <SPACE>y  "+y
nnoremap  <SPACE>yy  "+yy

" don't write the pasted upon stuff in visual mode into the register
vnoremap p pgvy

map <SPACE>" :vsplit<CR>

map <SPACE>% :split<CR>

nnoremap <SPACE>j :join<CR>
nnoremap <SPACE>J :move .-2<CR> :join<CR>

nnoremap <SPACE>s i<CR><ESC>
nnoremap <SPACE>S i<CR><ESC> V:m -2<CR>

nmap <A-u> kzz
nmap <A-d> jzz

nmap # `
vmap # `

