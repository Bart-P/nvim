return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>r"] = { name = "+refactor" },
			["<leader>c"] = { name = "+code" },
			["<leader>d"] = { name = "+diagnostic" },
			["<leader>s"] = { name = "+symbol" },
			["<leader>f"] = { name = "+find" },
		})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
