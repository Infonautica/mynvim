-- Setup telescope mappings
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fw", telescope.live_grep, { desc = "Find word" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fc", ":Telescope commands<CR>", { desc = "Commands" })

-- Setup neo tree mappings
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true, noremap = true })
-- Focus on the neo tree
vim.keymap.set("n", "<leader>o", ":Neotree reveal<CR>", { silent = true, noremap = true })

-- Jump to the end of line
vim.keymap.set("n", "<C-e>", "$")
vim.keymap.set("v", "<C-e>", "$")

-- Disable shift based navigation to favor <C-u> and <C-d>
vim.keymap.set("n", "<S-Up>", "<Nop>")
vim.keymap.set("n", "<S-Down>", "<Nop>")

-- Disable arrows navigation
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

vim.keymap.set("n", "<C-u>", "10k")
vim.keymap.set("n", "<C-d>", "10j")

-- Navigate splits
vim.keymap.set("n", "<Tab>", ":wincmd w<CR>") -- Switch to the next window
vim.keymap.set("n", "<C-Left>", "<C-W>h")
vim.keymap.set("n", "<C-Right>", "<C-W>l")
vim.keymap.set("n", "<C-Up>", "<C-W>k")
vim.keymap.set("n", "<C-Down>", "<C-W>j")

-- Create splits
vim.keymap.set("n", "\\", "<Nop>")
vim.keymap.set("n", "\\\\", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "--", "<cmd>split<CR>", { desc = "Horizontal split" })

-- Resize splits
vim.keymap.set("n", "<C-S-Left>", ":vertical :resize -2<CR>") -- Increase width of the split
vim.keymap.set("n", "<C-S-Right>", ":vertical :resize +2<CR>") -- Decrease width of the split
vim.keymap.set("n", "<C-S-Up>", ":resize +2<CR>") -- Increase height of the split
vim.keymap.set("n", "<C-S-Down>", ":resize -2<CR>") -- Decrease height of the split

-- Horizontal scroll
vim.keymap.set("n", "<z-Left>", ":normal 5zh") -- Scroll left
vim.keymap.set("n", "<z-Right>", ":normal 5zl") -- Scroll right

-- Save buffer
vim.keymap.set("n", "<leader>w", function()
	vim.lsp.buf.format({
		filter = function(client)
			-- Ignoring formatting
			if client.name == "ts_ls" then
				return false
			end

			-- Ignoring formatting
			if client.name == "volar" then
				return false
			end

			-- Ignoring formatting
			if client.name == "lua_ls" then
				return false
			end

			return true
		end,
	})

	vim.cmd("w")
end, { desc = "Save buffer" })

-- Formatting and none-ls mappings
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format Buffer" })

-- Git
local gitsigns = require("gitsigns")
vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
vim.keymap.set("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset Buffer" })
vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>gl", function()
	gitsigns.blame_line({ full = true })
end, { desc = "Git Blame Line" })
vim.keymap.set("n", "<leader>gt", gitsigns.toggle_current_line_blame, { desc = "Toggle Line Git Blame" })
-- map("n", "<leader>hd", gitsigns.diffthis)
-- map("n", "<leader>hD", function() gitsigns.diffthis("~") end)

-- Neotree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neotree" })
-- vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- Copilot
vim.keymap.set("i", "<F1>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })
vim.keymap.set("i", "<F2>", "copilot#Next()", { silent = true, expr = true })
vim.keymap.set("i", "<F3>", "copilot#Previous()", { silent = true, expr = true })

-- Copilot Chat
vim.keymap.set("n", "<leader>co", ":CopilotChatOpen<CR>", { desc = "Copilot Chat Open" })
vim.keymap.set("n", "<leader>cg", function()
	local input = vim.fn.input("Quick Chat: ")
	if input ~= "" then
		require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
	end
end, { desc = "Copilot Quick Chat" })

-- LSP
vim.keymap.set("n", "gd", telescope.lsp_definitions, { desc = "Go To Definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>lD", ":Telescope diagnostics bufnr=0 <CR>", { desc = "List diagnostics" })
vim.keymap.set("n", "gra", vim.lsp.buf.code_action, { desc = "Code Actions", noremap = true, silent = true })
vim.keymap.set("n", "grn", vim.lsp.buf.rename, { desc = "Rename", noremap = true, silent = true })

-- vim.keymap.set("n", "grr", vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set("n", "grr", telescope.lsp_references, { desc = "List References", noremap = true, silent = true })
