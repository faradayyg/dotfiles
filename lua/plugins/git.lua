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
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>gt", "<cmd>LazyGit<CR>", desc = "Toggle Lazy Git" },
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
}
