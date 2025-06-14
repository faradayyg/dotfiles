return {
	"neovim/nvim-lspconfig",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			opts.desc = "Go to declaration"
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

			opts.desc = "Open in new split"
			keymap.set("n", "<leader>l", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- open definition in new split

			opts.desc = "See available code actions"
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to

			opts.desc = "Smart rename"
			keymap.set("n", "gR", vim.lsp.buf.rename, opts) -- smart rename

			opts.desc = "Show line diagnostics"
			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

			opts.desc = "Go to previous diagnostic"
			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

			opts.desc = "Go to next diagnostic"
			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

			opts.desc = "Show documentation for what is under cursor"
			keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

			opts.desc = "Restart LSP"
			keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", opts) -- mapping to restart lsp if necessary
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()
		lspconfig.pyright.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				basedpyright = {
					reportMissingTypeStubs = true,
					disableLanguageServices = false,
					disableOrganizeImports = false,
					disableTaggedHints = false,
					enableTypeIgnoreComments = true,
					analysis = {
						inlayHints = {
							variableTypes = true,
							callArgumentNames = true,
						},
						diagnosticMode = "openFilesOnly",
						autoImportCompletions = true,
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						reportAttributeAccessIssue = false,
					},
				},
			},
		})

		lspconfig.ruff.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.ts_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.gopls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.rust_analyzer.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
}
