local function toggle(state)
	if state == 1 then
		vim.notify("Copilot enabled", "info", { title = "Copilot" })
		return "<cmd>Copilot enable<CR>"
	else
		vim.notify("Copilot disabled", "info", { title = "Copilot" })
		return "<cmd>Copilot disable<CR>"
	end
end
local function on()
	return toggle(1)
end
local function off()
	return toggle(0)
end
vim.keymap.set("n", "<leader>ce", on, { noremap = true, silent = true, desc = "Start Copilot" })
vim.keymap.set("n", "<leader>cd", off, { noremap = true, silent = true, desc = "Stop Copilot" })
vim.keymap.set({ "n", "v" }, "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "Open Copilot Chat window" })

return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
	{
		"github/copilot.vim",
	},
}
