return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            { 'j-hui/fidget.nvim',    opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
