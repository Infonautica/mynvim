return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			model = "claude-3.5-sonnet",
			headless = false,
			window = {
				border = "single",
				relative = "cursor",
				title = "Claude Chat",
				width = 0.42,
				-- layout = "float",
			},
			context = "buffers",
			mappings = {
				accept_diff = {
					normal = "<C-CR>",
					insert = "<C-CR>",
				},
				close = {
					normal = "<C-q>",
					insert = "<C-q>",
				},
			},
		},
	},
}
