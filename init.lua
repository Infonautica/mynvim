-- Setting up the basic configurations
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Initiate Lazy package manager
require("config.lazy")

-- Setup mappings for all of the plugins
require("config.mappings")
