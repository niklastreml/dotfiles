return {
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_word = "<>",
                accept_suggestion = "<C-j>",
            },
        })
    end,
}
