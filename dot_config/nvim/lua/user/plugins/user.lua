return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "echasnovski/mini.animate",
    version = false,
    config = function() require("mini.animate").setup() end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
  },
  {
    "towolf/vim-helm",
    lazy = false,
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      vim.g.copilot_proxy = os.getenv "HTTP_PROXY"
      require("copilot").setup {
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            open = "<Leader-a><p>",
          },
        },
        suggestion = {
          enabled = true,
          autotrigger = true,
          keymap = {
            accept = "<Leader-a><CR>",
          },
        },
        filetypes = {
          yaml = true,
          markdown = true,
        },
      }
    end,
  },
}
