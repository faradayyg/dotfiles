return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "python", "javascript", "go" },
			auto_install = true,
			highlight = {
				enable = true,
				disable = function(lang, bufnr)
					return vim.api.nvim_buf_line_count(bufnr) > 2000 or vim.bo.filetype == "json" or (lang == "json")
				end,
			},
			indent = { enable = true },
		})
	end,
}
