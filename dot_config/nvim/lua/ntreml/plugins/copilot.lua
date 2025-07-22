return {
    "zbirenbaum/copilot.lua",
    config = function()
        require('copilot').setup(
            {
                suggestion = {
                    auto_trigger = true,
                    keymap = {
                        jump_prev = "[[",
                        jump_next = "]]",
                        accept = "<C-j>",
                        dismiss = "<M-j>",
                        refresh = "gr",
                        open = "<M-CR>"
                    },
                }
            }
        )
    end,
}
