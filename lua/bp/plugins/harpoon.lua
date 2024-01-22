return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local harpoon = require('harpoon')
        local keys = vim.keymap
        local opts = { silent = true }

        harpoon:setup()

        keys.set("n", "<leader>A", function()
            harpoon:list():append()
        end, opts)
        keys.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(require('harpoon'):list()) end, opts)
        keys.set("n", "<leader>j", function() harpoon:list():select(1) end, opts)
        keys.set("n", "<leader>k", function() harpoon:list():select(2) end, opts)
        keys.set("n", "<leader>l", function() harpoon:list():select(3) end, opts)
        keys.set("n", "<leader>ö", function() harpoon:list():select(4) end, opts)

        -- Toggle previous & next buffers stored within Harpoon list
        keys.set("n", "<leader>an", function() harpoon:list():prev() end, opts)
        keys.set("n", "<leader>ap", function() harpoon:list():next() end, opts)
    end,
}
