-- toggle Netrw
vim.keymap.set("n", "<leader>e", ":Ex<CR>")

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down, works in visual and block  modes
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv")

-- paste without overwriting
vim.keymap.set("n", "<leader>p", "\"0p")
