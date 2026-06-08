return {
  "brenoprata10/nvim-highlight-colors",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    render = "background", -- or "virtual_text" / "foreground"
    enable_tailwind = true,
    -- Exclude filetypes or configure custom colors here
  },
}
