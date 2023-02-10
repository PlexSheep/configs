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
" inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" vsplit with <Leader>, then "
map <Leader>" :vsplit<CR>

" split with <Leader>, then %"
map <Leader>% :split<CR>

" :W to write file as root"
command W :SudaWrite

" :E to open file as root"
command E :SudaRead

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect
call plug#begin()

Plug 'lambdalisue/suda.vim'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'psliwka/vim-smoothie' " scorll with STRG + d or STRG + u
Plug 'nvim-lualine/lualine.nvim'   " nicer status line
Plug 'neovim/nvim-lspconfig'       " lsp config for easy setup of LSP
Plug 'romgrk/barbar.nvim'          " tabs for buffers
Plug 'EdenEast/nightfox.nvim'      " Vim-Plug
Plug 'numToStr/FTerm.nvim'         " floating terminal, toggle with <F11>
Plug 'kdheepak/lazygit.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'goolord/alpha-nvim'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
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

" debuging
packadd termdebug

" debuggin for rust
command Rustdebug :let termdebugger="rust-gdb" | :Termdebug

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

require'lspconfig'.clangd.setup{}
require'lspconfig'.rust_analyzer.setup{}

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

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        }, {
            { name = 'buffer' },
        })
        })

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
    })

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
    })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
    { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
    })

-- Example keybindings
vim.keymap.set('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

END
