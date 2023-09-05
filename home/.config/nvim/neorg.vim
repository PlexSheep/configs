lua << EOF
require 'nvim-treesitter.configs'.setup {
	ensure_installed = { 'norg' },

	highlight = {
		enable = true,
	}
}

require('neorg').setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    main = "~/Nextcloud/Neorg",
                    work = "~/Nextcloud/Neorg/500-Work",
                },
            },
        },
    },
}
EOF
