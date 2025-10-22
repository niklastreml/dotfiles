return {}
--[[
return {
    "zbirenbaum/copilot.lua",
    config = function()
        require('copilot').setup(
            {
                suggestion = {
                    auto_trigger = true,
                    keymap = {
                        accept = "<C-j>",
                        dismiss = "<M-j>",
                    },
                }
            }
        )
    end,
}
]]
