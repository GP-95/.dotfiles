return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup {position = 'left'}
        vim.cmd([[
            highlight NeoTreeNormal guibg=NONE ctermbg=NONE
            highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
        ]])
    end,
}
