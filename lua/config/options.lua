vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.opt.autowrite = true
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.confirm = true

vim.opt.inccommand = "nosplit"

vim.opt.mouse = "a"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ruler = false
vim.opt.showmode = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.textwidth = 80
vim.opt.scrolloff = 8

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.signcolumn = "yes"

vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000

vim.opt.updatetime = 200

vim.opt.smoothscroll = true
