return {
    "sainnhe/edge",
    priority = 1000, -- load this before anything else
    config = function()
        vim.cmd([[let g:edge_style='aura']])
        vim.cmd([[colorscheme edge]])
    end
}
