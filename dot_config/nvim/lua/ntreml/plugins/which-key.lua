return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            local wk = require("which-key")
            wk.add({
                { "<leader>f", group = "Find" },
                { "<leader>l", group = "LSP" },
                { "<leader>g", group = "Goto" },
            })
        end
    }
}
