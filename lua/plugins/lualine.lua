local function filepath()
	return vim.fn.expand("%:p")
end

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_c = { filepath },
				lualine_x = {},
				lualine_y = {},
			},
		})
	end,
}
