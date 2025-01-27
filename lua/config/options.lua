vim.g.mapleader = " "
vim.g.maplocalleader = "//"

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.cursorline = true
opt.cursorlineopt = "number"
opt.expandtab = true
opt.fillchars = {
	eob = " ",
}
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldmethod = "expr"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.laststatus = 3
opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.scrolloff = 8
opt.shiftwidth = 4
opt.showmode = false
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.smoothscroll = true
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true
opt.textwidth = 78
opt.timeoutlen = 400
opt.undofile = true
opt.updatetime = 200
