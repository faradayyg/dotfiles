return {
	-- {
	-- 	"echasnovski/mini.files",
	-- 	version = "*",
	-- 	config = function()
	-- 		require("mini.files").setup()
	-- 		vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open floating file explorer" })
	-- 	end,
	-- 	opts = {
	-- 		windows = {
	-- 			-- Maximum number of windows to show side by side
	-- 			max_number = math.huge,
	-- 			-- Whether to show preview of file/directory under cursor
	-- 			preview = true,
	-- 			-- Width of focused window
	-- 			width_focus = 50,
	-- 			-- Width of non-focused window
	-- 			width_nofocus = 15,
	-- 			-- Width of preview window
	-- 			width_preview = 25,
	-- 		},
	-- 		mappings = {
	-- 			close = "q",
	-- 			go_in = "l",
	-- 			go_in_plus = "<CR>",
	-- 			go_out = "h",
	-- 			go_out_plus = "H",
	-- 			mark_goto = "'",
	-- 			mark_set = "m",
	-- 			reset = "<BS>",
	-- 			reveal_cwd = "@",
	-- 			show_help = "g?",
	-- 			synchronize = "=",
	-- 			trim_left = "<",
	-- 			trim_right = ">",
	-- 		},
	-- 	},
	-- },
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.comment").setup()
			require("mini.files").setup({
				windows = {
					max_number = math.huge,
					preview = false,
					width_focus = 50,
					width_nofocus = 15,
					width_preview = 25,
				},
			})
			require("mini.pairs").setup()
			require("mini.surround").setup()
			vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open floating file explorer" })
		end,
	},
}
