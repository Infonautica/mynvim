return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>/",
			},
			opleader = {
				block = "<leader>/",
			},
		})
	end,
}
