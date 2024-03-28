return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", builtin.buffers, {})
			vim.keymap.set("n", "<leader>ff", builtin.current_buffer_fuzzy_find, {})

			vim.api.nvim_set_keymap("n", "<space>fb", ":Telescope file_browser<CR>", { noremap = true })
			vim.keymap.set("n", "gr", builtin.lsp_references, {})
			vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
			vim.keymap.set("n", "ds", builtin.lsp_document_symbols, {})
			vim.keymap.set("n", "dS", builtin.lsp_dynamic_workspace_symbols, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							winblend = 10,
							border = true,
							previewer = true,
						}),
						mappings = {
							i = {
								["<C-j>"] = require("telescope.actions").move_selection_next,
								["<C-k>"] = require("telescope.actions").move_selection_previous,
							},
							n = {
								["<C-j>"] = require("telescope.actions").move_selection_next,
								["<C-k>"] = require("telescope.actions").move_selection_previous,
							},
						},
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
