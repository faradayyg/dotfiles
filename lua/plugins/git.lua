return {
	{ "f-person/git-blame.nvim" },
	{
		"airblade/vim-gitgutter",
		config = function()
			vim.g.gitgutter_map_keys = 0
			vim.keymap.set("n", "<leader>gh", "<cmd>GitGutterLineHighlightsToggle<CR>", {
				desc = "Toggle GitGutter highlights",
			})
			vim.keymap.set("n", "<leader>gj", "<cmd>GitGutterNextHunk<CR>", { desc = "Jump to next GitGutter hunk" })
			vim.keymap.set(
				"n",
				"<leader>gk",
				"<cmd>GitGutterPrevHunk<CR>",
				{ desc = "Jump to previous GitGutter hunk" }
			)
			vim.keymap.set("n", "<leader>gx", "<cmd>GitGutterUndoHunk<CR>", { desc = "Undo GitGutter hunk" })
		end,
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			lazygit = {
				-- your lazygit configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
		},
		keys = {
			{
				"<leader>gt",
				function()
					Snacks.lazygit()
				end,
				desc = "Snacks picker selector",
			},
			{
				"<leader>ggl",
				function()
					Snacks.lazygit.log()
				end,
				desc = "Show git log",
			},
		},
	},
	{
		"ruifm/gitlinker.nvim",
		config = function()
			require("gitlinker").setup()
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gb",
				'<cmd>lua require("gitlinker").get_buf_range_url("n", {action_callback = noti})<cr>',
				{ silent = true, desc = "Copy github link" }
			)
			vim.api.nvim_set_keymap(
				"v",
				"<leader>gb",
				'<cmd>lua require("gitlinker").get_buf_range_url("v", {action_callback = noti})<cr>',
				{}
			)
		end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
