lua << EOF
local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")
if BinaryFormat == "dll" then
    function os.name()
        return "Windows"
    end
elseif BinaryFormat == "so" then
    function os.name()
        return "Linux"
    end
elseif BinaryFormat == "dylib" then
    function os.name()
        return "MacOS"
    end
end

if vim.g.started_by_firenvim == true then
    vim.cmd('runtime firenvim.vim')
    vim.cmd('runtime common.vim')
else
    vim.cmd('runtime common.vim')
    vim.cmd('runtime plugs.vim')
    vim.cmd('runtime main.vim')
    vim.cmd('runtime autopairs.vim')
end

if os.name() == "Windows" then
    vim.cmd('runtime windows.vim')
end

EOF
