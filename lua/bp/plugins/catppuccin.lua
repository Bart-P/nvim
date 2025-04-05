return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            transparent_background = true, -- disables setting the background color.
        })

        vim.cmd([[colorscheme catppuccin-mocha]])
    end,
}
