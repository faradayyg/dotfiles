return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme catppuccin")
			require("catppuccin").setup({
				flavour = "mocha",
				show_end_of_buffer = true,
				transparent_background = false,
			})
		end,
	},
	{ "wakatime/vim-wakatime", lazy = false },
}
