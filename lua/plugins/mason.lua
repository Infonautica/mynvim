return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"volar",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.volar.setup({})
			lspconfig.ts_ls.setup({
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = "/Users/leoniddanilov/.nvm/versions/node/v20.18.0/lib/node_modules/@vue/typescript-plugin",
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
				filetypes = {
					"javascript",
					"typescript",
					"vue",
				},
			})

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.completion.spell,
					require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
				},
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		config = function()
			require("mason-null-ls").setup({
				automatic_installation = {
					"stylua",
					"prettier",
				},
				ensure_installed = {
					"stylua",
					"prettier",
				},
			})
		end,
	},
}
