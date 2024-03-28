return {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
    config = function()
        require('Comment').setup({
            padding = true,
            toggler = {
                line = "<leader>/",
                block = "gbc",
                default = "gc"
            },
        })
    end

}
