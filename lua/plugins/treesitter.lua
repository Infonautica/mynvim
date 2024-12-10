return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			sync_install = true,
			ensure_installed = { "lua", "javascript", "typescript", "vue" },
			ignore_install = {},
			modules = {
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			},
		})
	end,
}
