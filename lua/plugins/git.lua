return {
	{ "f-person/git-blame.nvim" },
	{
		"airblade/vim-gitgutter",
		config = function()
			vim.g.gitgutter_map_keys = 0
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
			{ "<leader>git", "<cmd>LazyGit<CR>", desc = "Toggle Lazy Git" },
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
}
