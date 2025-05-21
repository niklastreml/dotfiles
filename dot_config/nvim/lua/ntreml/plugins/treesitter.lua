return {
    'nvim-treesitter/nvim-treesitter',
    tag = "v0.9.3",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = {
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "typst",
                "asm",
                "nasm",
                "c",
                "lua",
                "go",
                "rust",
                "python",
                "javascript",
                "typescript",
                "html",
                "templ"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
        }
    end,
}
