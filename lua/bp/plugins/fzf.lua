return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	keys = {
		{ "<C-f>", "<cmd>FzfLua git_files<cr>", desc = "FZF: Find git files" },
		{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "FZF: Find files" },
		{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "FZF: Live grep files" },
		{ "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "FZF: Find  recent (old) files" },
		{ "<leader>fq", "<cmd>FzfLua quickfix<cr>", desc = "FZF: Find in quickfix" },
		{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "FZF: Buffers" },
		{ "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "FZF: Keymaps" },
		{ "<leader>fr", "<cmd>FzfLua registers<cr>", desc = "FZF: Registers" },
		{ "<leader>fm", "<cmd>FzfLua marks<cr>", desc = "FZF: Marks" },
		{ "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "FZF: Commands" },
	},
	opts = {
		oldfiles = { include_current_session = true },
	},
}
