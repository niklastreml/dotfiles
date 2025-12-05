return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            indent = { enabled = true },
            image = { enabled = false },
            input = { enabled = true },
            picker = { enabled = true },
        }
    }
}
