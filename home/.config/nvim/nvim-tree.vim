" Open NvimTree with f5"
nnoremap <F5> :NvimTreeToggle<CR>

lua << EOF

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

    -- default mappings
    -- for some reason, this does not work well when loaded with a wsl linux.
    -- attempt to index field 'config' (a nil value)
    -- which does not make sense, as config is a defined field of the Api variable
    --api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    -- cd 
    vim.keymap.set('n', '<C-c>', api.tree.change_root_to_node,        opts('Up'))
    -- default is g?
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help')) 
end

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.8

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
    view = {
        float = {
            enable = true,
            open_win_config = function()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * WIDTH_RATIO
                local window_h = screen_h * HEIGHT_RATIO
                local window_w_int = math.floor(window_w)
                local window_h_int = math.floor(window_h)
                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2)
                - vim.opt.cmdheight:get()
                return {
                    border = 'rounded',
                    relative = 'editor',
                    row = center_y,
                    col = center_x,
                    width = window_w_int,
                    height = window_h_int,
                }
            end,
        },
        width = function()
            return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
    },
    on_attach = my_on_attach,
})

EOF
