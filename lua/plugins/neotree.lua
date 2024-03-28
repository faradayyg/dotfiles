return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
			update_to_buf_dir = {
				enable = true,
				auto_open = true,
			},
			view = {
				width = 30,
				side = "left",
				auto_resize = true,
			},
		})

		vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<C-n>", ":Neotree reveal<CR>", {})
	end,
}
