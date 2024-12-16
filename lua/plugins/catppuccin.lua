return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1500,
	config = function()
		local theme = require("catppuccin")
		theme.setup({
			transparent_background = true,
			term_colors = false,
			background = {
				light = "latte",
				dark = "mocha",
			},
			treesitter = true,
			integrations = {
				alpha = true,
				aerial = true,
				mason = true,
				neotree = true,
				notify = true,
				nvimtree = false,
				semantic_tokens = true,
				symbols_outline = true,
				telescope = true,
				ts_rainbow = false,
				which_key = true,
			},
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
