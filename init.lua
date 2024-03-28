vim.cmd("source ~/.config/nvim/configrc")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set backspace=indent,eol,start")
vim.cmd("set splitbelow")
vim.cmd("set splitright")
vim.cmd("set autoindent")
vim.cmd("set nu")
vim.g.mapleader = " "
vim.cmd("set mouse=a")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set completeopt=menuone,noinsert,noselect")
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.cmd("set wildignore=*/node_modules/*")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } }, opts)
