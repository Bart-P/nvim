local opts = {
    silent = true,
}


-- toggle Netrw
vim.keymap.set("n", "<leader>e", ":Ex<CR>", opts)

-- better indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down, works in visual and block  modes
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv", opts)

-- paste without overwriting
vim.keymap.set("n", "<leader>p", "\"0p", opts)
