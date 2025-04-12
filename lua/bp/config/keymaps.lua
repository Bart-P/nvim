-- Copy selected to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy line to clipboard" })

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
