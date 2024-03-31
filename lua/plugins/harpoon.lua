local mark_and_notify = function()
	require("harpoon.mark").add_file()
	vim.notify("Marked file", "info", { title = "Harpoon" })
end

return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({
			global_settings = {
				save_on_toggle = false,
				save_on_change = true,
				mark_branch = true,
			},
		})
		require("telescope").load_extension("harpoon")
		vim.keymap.set("n", "<C-t>", mark_and_notify)
		vim.keymap.set("n", "<C-h>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
	end,
}
