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

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect

" load vim plugged stuff
runtime plugs.vim

" load plugins from extra files
runtime nvim-tree.vim

" plugin specific configs
runtime markdownpreview.vim

" load plugins from extra files
runtime nvim-table-mode.vim

" load tabbar
runtime tagbar.vim

" load suda
runtime suda.vim

" load neorg
runtime neorg.vim

" load ALE (another language server or something that works with COC)
"runtime ale.vim

" no default mappings for vim smoothie (fancy scrolling)
let g:smoothie_no_default_mappings = 1

" smooth scrolling with J and K instead of <S-Up> and <S-Down>
nnoremap <unique> J <cmd>call smoothie#do("\<C-D>") <CR>
vnoremap <unique> J <cmd>call smoothie#do("\<C-D>") <CR>
nnoremap <unique> K <cmd>call smoothie#do("\<C-U>") <CR>
vnoremap <unique> K <cmd>call smoothie#do("\<C-U>") <CR>

" Use <Tab> and <S-Tab> to navigate through popup menu"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience"
set completeopt=menuone,noinsert,noselect

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
nnoremap <silent> <leader>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <leader>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <leader>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <leader>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"
color nightfox

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_border_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

let g:lazygit_use_custom_config_file_path = 0 " config file path is evaluated if this value is 1
let g:lazygit_config_file_path = '' " custom config file path

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

" coc language server configs
runtime coc.vim

" do these commands manually, they dont like being scripted.
"CocInstall coc-clangd coc-cmake coc-css coc-floaterm coc-fzf-preview coc-git coc-html coc-json
"CocInstall coc-lists coc-lua coc-pyright coc-rust-analyzer coc-sh coc-snippets coc-sql
""""these may cause errors"""""CocInstall coc-symbol-line coc-toml coc-texlab coc-vimlsp coc-xml

" slime (sends stuff to other programs, like ipython)
let g:slime_target = "neovim"
nmap <C-c>a ggvG:SlimeSend<CR>
nmap <leader>cs :SlimeConfig<CR>

"------------------------------------------------------
lua << EOF

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


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

-- floaterm keys
vim.keymap.set('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

EOF
