local open_preview = function()
	vim.cmd("call Vim_Markdown_Preview_Local()")
	os.execute("osascript -e 'tell application \"Safari\" to activate'")
end

return {
	"JamshedVesuna/vim-markdown-preview",
	config = function()
		vim.keymap.set("n", "<leader>p", open_preview, { desc = "Preview in browser" })
	end,
}
