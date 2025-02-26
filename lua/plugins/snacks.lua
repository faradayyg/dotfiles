return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = {
				enabled = true,
				config = function(opts, defaults)
					vim.keymap.set("n", "<C-p>", "<cmd>lua Snacks.picker.files()<CR>", {})
					vim.keymap.set("n", "<leader>g", "<cmd>lua Snacks.picker.grep()<CR>", { desc = "Live grep" }) -- Needs some timeout set to not interfere with other configs
					vim.keymap.set("n", "<leader>b", "<cmd>lua Snacks.picker.buffers()<CR>", { desc = "Show buffers" })
					vim.keymap.set("n", "<C-b>", "<cmd>lua Snacks.picker.explorer()<CR>", { desc = "Show buffers" })
				end,
			},
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			-- scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			lazygit = { enabled = true },
		},
		keys = {
			{
				"<leader>st",
				function()
					Snacks.picker()
				end,
				desc = "Snacks picker selector",
			},
			-- LSP
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
			{
				"gD",
				function()
					Snacks.picker.lsp_declarations()
				end,
				desc = "Goto Declaration",
			},
			{
				"gr",
				function()
					Snacks.picker.lsp_references()
				end,
				nowait = true,
				desc = "References",
			},
			{
				"gI",
				function()
					Snacks.picker.lsp_implementations()
				end,
				desc = "Goto Implementation",
			},
			{
				"gy",
				function()
					Snacks.picker.lsp_type_definitions()
				end,
				desc = "Goto T[y]pe Definition",
			},
			{
				"<leader>gs",
				function()
					Snacks.picker.lsp_symbols()
				end,
				desc = "LSP Symbols",
			},
			{
				"<leader>sS",
				function()
					Snacks.picker.lsp_workspace_symbols()
				end,
				desc = "LSP Workspace Symbols",
			},
		},
	},
}
