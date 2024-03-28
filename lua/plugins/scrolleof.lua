return {
    'Aasim-A/scrollEOF.nvim',
    event = {"CursorMoved", "WinScrolled"},
    opts = {},
    config = function()
        require("scrollEOF").setup({
            insert_mode = true,
        })
        vim.g.scrollEOF = true
        vim.cmd("set scrolloff=5")
    end
}
