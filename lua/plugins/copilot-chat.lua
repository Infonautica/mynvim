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
			},
			context = "buffers",
			mappings = {
				accept_diff = {
					normal = "<C-y>",
					insert = "<C-y>",
				},
				close = {
					normal = "<C-q>",
					insert = "<C-q>",
				},
			},
		},
	},
}
