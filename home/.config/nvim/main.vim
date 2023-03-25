" enter normal mode from terminal-emulator with <C-w>
inoremap <C-w> <Esc>
tnoremap <C-w> <C-\><C-n>

" automatically enter insert mode on new neovim terminals
augroup terminal
  au TermOpen * startinsert
augroup END

" debuging
packadd termdebug

" debugging for rust
command Rustdebug :let termdebugger="rust-gdb" | :Termdebug

" :W to write file as root"
command W :SudaWrite
" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect

" :E to open file as root"
command E :SudaRead

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect
call plug#begin()

Plug 'lambdalisue/suda.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'psliwka/vim-smoothie' " scorll with STRG + d or STRG + u
Plug 'romgrk/barbar.nvim'          " tabs for buffers
Plug 'EdenEast/nightfox.nvim'      " Vim-Plug
Plug 'numToStr/FTerm.nvim'         " floating terminal, toggle with <F11>
Plug 'kdheepak/lazygit.nvim'
Plug 'nvim-lualine/lualine.nvim'   " nicer status line
Plug 'goolord/alpha-nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Use <Tab> and <S-Tab> to navigate through popup menu"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect


" Open NvimTree with f5"
nnoremap <F5> :NvimTreeToggle<CR>

" Move to previous/next"
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next"
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position..."
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer"
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer"
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by..."
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"
color terafox

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

let g:lazygit_use_custom_config_file_path = 0 " config file path is evaluated if this value is 1
let g:lazygit_config_file_path = '' " custom config file path

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>


" coc language server configs
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" do these commands manually, they dont like being scripted.
"CocInstall coc-clangd coc-cmake coc-css coc-floaterm coc-fzf-preview coc-git coc-html coc-json
"CocInstall coc-lists coc-lua coc-pyright coc-rust-analyzer coc-sh coc-snippets coc-sql
""""these may cause errors"""""CocInstall coc-symbol-line coc-toml coc-texlab coc-vimlsp coc-xml

"------------------------------------------------------
lua << END
require('alpha').setup(require('alpha.themes.startify').config)

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_d = {'diagnostics'},


                lualine_x = {'encoding', 'fileformat', 'filetype', 'filesize'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                    },
                    tabline = {},
                    winbar = {},
                    inactive_winbar = {},
                    extensions = {}
}

require'FTerm'.setup({
border = 'single',
dimensions  = {
    height = 0.9,
    width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

END
