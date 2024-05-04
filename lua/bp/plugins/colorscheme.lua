-- return {
--     "sainnhe/edge",
--     priority = 1000, -- load this before anything else
--     config = function()
--         vim.cmd([[let g:edge_style='aura']])
--         vim.cmd([[colorscheme edge]])
--     end
-- }
-- return {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = function()
--         require('gruvbox').setup({
--
--             transparent_mode = true,
--         })
--         vim.cmd([[colorscheme gruvbox]])
--     end,
--     opts = ...
-- }
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            transparent_background = true, -- disables setting the background color.
        })

        -- vim.cmd([[let g:edge_style='aura']])
        vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
}
