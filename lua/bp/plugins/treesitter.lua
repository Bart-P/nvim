return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "VeryLazy",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"php",
					"typescript",
					"html",
					"css",
					"styled",
					"json",
					"tsx",
					"javascript",
					"markdown",
					"markdown_inline",
					"vue",
				},
				highlight = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "gni",
						node_incremental = ".",
						scope_incremental = ",",
						node_decremental = "-",
					},
				},
				indent = {
					enable = true,
					disable = { "python" },
				},
				folding = { enable = true },
			})
		end,
	},
}
