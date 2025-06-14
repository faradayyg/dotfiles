return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"ts_ls",
				"gopls",
				"rust_analyzer",
				"ruff",
				"basedpyright",
			},
			automatic_installation = true,
		})
	end,
}
