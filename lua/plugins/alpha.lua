return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local theta = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")
		theta.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene <CR>"),
			dashboard.button("f", "󰈞  Find file", "<cmd>Telescope fd<CR>"),
			dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/ <CR>"),
			dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}
		require("alpha").setup(theta.config)
	end,
}
