return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>",                    desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>",                     desc = "File Grep" },
        { "<leader>fr", "<cmd>Telescope resume<CR>",                        desc = "Find resume" },
        { "<leader>fd", "<cmd>Telescope diagnostics<CR>",                   desc = "Find Diagnostics" },
        { "<leader>fG", "<cmd>Telescope git_files<CR>",                     desc = "Find Git Files" },
        { "gd",         "<cmd>Telescope lsp_definitions<CR>",               desc = "Go to Definition" },
        { "gr",         "<cmd>Telescope lsp_references<CR>",                desc = "Go to References" },
        { "gI",         "<cmd>Telescope lsp_implementations<CR>",           desc = "Go to Implementations" },
        { "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>",          desc = "Go to Type Definitions" },
        { "<leader>ls", "<cmd>Telescope lsp_document_symbols<CR>",          desc = "Symbols" },
        { "<leader>ls", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", desc = "Workspace Symbols" },
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
    }
}
