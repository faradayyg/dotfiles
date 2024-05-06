return {
	"vim-test/vim-test",
	config = function()
		vim.cmd([[
            let test#strategy = "floaterm"
            let test#neovim#term_position = "botright"
            let test#neovim#term_opener = "tabnew"
            let test#neovim#term_quit = "tabclose"
            let test#python#runner = "pytest"
            let test#python#pytest#options = "-s --color=yes -v"
        ]])
		vim.keymap.set("n", "<leader>0", "<cmd>TestFile<CR>", {})
		vim.keymap.set("n", "<leader>9", "<cmd>TestNearest<CR>", {})
		vim.keymap.set("n", "<leader>tt", "<cmd>TestSuite<CR>", {})
	end,
}
