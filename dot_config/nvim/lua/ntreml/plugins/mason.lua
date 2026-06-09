return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer" },
            servers = {
                tailwindcss = {
                    filetypes = {
                        "html",
                        "templ",
                        "javascriptreact",
                        "typescriptreact",
                        "vue",
                        "svelte",
                    },
                    init_options = {
                        userLanguages = {
                            templ = "html", -- Maps templ to html for tailwind processing
                        },
                    },
                },
            },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        }
    }
}
