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

local keymap = vim.keymap

keymap.set("n", "<leader>nh", "<cmd>noh <CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows vertically" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
keymap.set("n", "<leader>ss", "<cmd>w<CR>", { desc = "Save file" })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Opens new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Closes new tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "New tab with current buffer" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })

-- Buffers
keymap.set("n", "[b", "<cmd>bprev<CR>", { desc = "Previous Buffer" })
keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next Buffer" })

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
