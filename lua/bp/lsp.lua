require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"intelephense", -- PHP
		"ts_ls", -- JS/TS
		"volar", -- Vue
		"lua_ls", -- Lua
		"bashls", -- Bash
		"pyright", -- Python
		"html", -- Html
        "cssls", -- CSS
        "tailwindcss", -- Tailwind
	},

	automatic_installation = true,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function on_attach(_, bufnr) -- first arg was client, if ever needed
	require("lsp_signature").on_attach({
		bind = true,
		handler_opts = {
			border = "rounded"
		},
		hint_prefix = "",
		hint_enable = true,
	}, bufnr)

	local map = function(mode, lhs, rhs, desc)
		vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
	end
	local fzf = require("fzf-lua")

	-- Default LSP mappings
	map("n", "K", vim.lsp.buf.hover, "Hover docs")
	map("n", "<leader>rn", vim.lsp.buf.rename, "LSP: rename")
	map("n", "<leader>ca", fzf.lsp_code_actions, "Code actions")
	map("n", "gl", vim.diagnostic.open_float, "Line diagnostics")
	map("n", "<leader>dp", vim.diagnostic.goto_prev, "Prev diagnostic")
	map("n", "<leader>dn", vim.diagnostic.goto_next, "Next diagnostic")
	map("n", "<leader>da", fzf.lsp_document_diagnostics, "All buffer diagnostics")

	-- FZF-Lua powered LSP functions
	map("n", "gd", fzf.lsp_definitions, "Go to definition (fzf)")
	map("n", "gr", fzf.lsp_references, "References (fzf)")
	map("n", "gi", fzf.lsp_implementations, "Implementations (fzf)")
	map("n", "<leader>sd", fzf.lsp_document_symbols, "Document symbols (fzf)")
	map("n", "<leader>sw", fzf.lsp_workspace_symbols, "Workspace symbols (fzf)")
end

-- PHP
lspconfig.intelephense.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		intelephense = {
			environment = {
				includePaths = {
					"vendor",
					"app",
					"bootstrap",
					"config",
					"routes",
					"database",
				},
			},
			files = {
				maxSize = 1000000, -- to allow big Laravel projects
			},
			telemetry = {
				enabled = false,
			},
		},
	},
})

-- JavaScript / TypeScript
lspconfig.ts_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.stdpath("data")
					.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
	settings = {
		typescript = {
			ts_ls = {
				useSyntaxServer = false,
			},
		},
	},
})

-- Vue 3
lspconfig.volar.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	init_options = {
		vue = {
			hybridMode = false,
		},
	},
	settings = {},
})

-- Lua (for Neovim config)
lspconfig.lua_ls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

-- Bash
lspconfig.bashls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Python
lspconfig.pyright.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- CSS
lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- HTML
lspconfig.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Tailwind
lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
