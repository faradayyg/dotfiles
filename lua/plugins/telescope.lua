return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Show buffers in telescope" })
			vim.keymap.set(
				"n",
				"<leader>ff",
				builtin.current_buffer_fuzzy_find,
				{ desc = "Fuzzy find in current buffer" }
			)

			vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Go to LSP references" })
			vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
			vim.keymap.set("n", "ds", builtin.lsp_document_symbols, {})
			vim.keymap.set("n", "dS", builtin.lsp_dynamic_workspace_symbols, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")

			telescope.setup({
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

			telescope.load_extension("ui-select")
		end,
	},
}
