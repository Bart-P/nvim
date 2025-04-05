return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "FZF: Find files" },
        { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "FZF: Live Grep Project" },
        { "<C-f>", "<cmd>FzfLua files<cr>", desc = "FZF: Find files" },
        { "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "FZF: Find  recent (old) files" },
        { "<leader>fq", "<cmd>FzfLua quickfix<cr>", desc = "FZF: Find in quickfix" },
        { "<leader>fq", "<cmd>FzfLua quickfix<cr>", desc = "FZF: Find in quickfix" },
    },
    opts = {}
}
