-- Setting up the basic configurations
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.completeopt = "menu,menuone,noselect,noinsert"
vim.opt.splitright = true
vim.opt.wrap = true         -- Enable line wrapping
vim.opt.linebreak = true    -- Break lines at word boundaries
vim.opt.breakindent = false -- Preserve indentation in wrapped lines
vim.opt.swapfile = false
vim.opt.winborder = 'single'

-- Initiate Lazy package manager
require("config.lazy")

-- Setup mappings for all of the plugins
require("config.mappings")
