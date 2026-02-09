return {
  'stevearc/oil.nvim',
  cmd = { "Oil" }, -- Load if you type :Oil
  keys = {
    -- Bind <leader>e to open the directory of the current file (same as :Ex)
    { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent directory" },
    -- Optional: Many people bind '-' to this (like vim-vinegar)
    { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
  -- Important: We use keys/cmd to lazy load, so we don't need 'lazy = false'
  -- unless you want 'nvim .' to work (which requires the plugin to load early).
  -- If you want 'nvim .' support, keep lazy = false.
  lazy = false, 
}
