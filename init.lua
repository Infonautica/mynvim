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

-- Initiate Lazy package manager
require("config.lazy")

-- Setup mappings for all of the plugins
require("config.mappings")
