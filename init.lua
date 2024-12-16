-- Setting up the basic configurations
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 0

-- Initiate Lazy package manager
require("config.lazy")

-- Setup mappings for all of the plugins
require("config.mappings")
