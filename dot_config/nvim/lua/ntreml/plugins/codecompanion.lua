return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "j-hui/fidget.nvim",
        "lalitmee/codecompanion-spinners.nvim",
    },
    config = function()
        local cc = require("codecompanion")

        vim.keymap.set({ "n", "v" }, '<leader>ac', "<cmd>CodeCompanionChat<cr>", { desc = '[A]I [C]hat' })
        vim.keymap.set({ "n", "v" }, '<leader>ap', "<cmd>CodeCompanion<cr>", { desc = '[A]I [P]rompt' })
        vim.keymap.set({ "n", "v" }, '<leader>aa', "<cmd>CodeCompanionActions<cr>", { desc = '[A]I [A]ctions' })
        vim.keymap.set({ "n", "v" }, '<leader>ai', "<cmd>CodeCompanion /implement<cr>", { desc = '[A]I [I]mplement' })

        cc.setup({
            prompt_library = {
                ["Implement this code"] = { -- The name that appears in the menu
                    strategy = "inline",
                    description = "Finish the code based on the context",
                    opts = {
                        modes = { "v" },          -- Only show this in visual mode
                        placement = "replace",
                        short_name = "Implement", -- Allows you to type /complete
                        auto_submit = true,      -- Send immediately without editing the prompt?
                        user_prompt = false,       -- If true, it asks you for extra input before sending
                        is_slash_command = true,  -- Allow this to be run as a slash command
                        alias = "implement",
                    },
                    prompts = {
                        {
                            role = "system",
                            content = function(context)
                                local prompt = "You are a senior " ..
                                context.filetype ..
                                " developer. Your task is to complete the code the user provides. Return ONLY the code, no markdown blocks, no explanations. If I provide a function signature, implement the body. If I provide a comment, implement the logic described. The code is in buffer " ..
                                context.bufnr ..
                                ". Use the surrounding code to understand context, but do not change any code outside of what I provide. Ensure the code is syntactically correct and follows best practices for " ..
                                context.filetype .. "."
                                return prompt
                            end,
                        },
                        {
                            role = "user",
                            content = function(context)
                                -- This grabs the text you selected visually
                                local code = require("codecompanion.helpers.actions").get_code(context.start_line,
                                    context.end_line)
                                local bufContent = require("codecompanion.utils.buffers").get_content(context.bufnr)

                                return "This is the content of the current buffer: \n\n"..bufContent.. "\n\n Now complete this code:\n\n" .. code
                            end,
                        },
                    },
                },
            },
            interactions = {
                chat = {
                    adapter = "opencode",
                    variables = {
                        ["buffer"] = {
                            opts = {
                                default_params = "all",
                            }
                        }
                    }
                },
                inline = {
                    adapter = "copilot",
                    model = "gpt-5.2-codex"
                },
                cmd = {
                    adapter = "copilot",
                }
            },
            extensions = {
                spinner = {
                    active = true,
                    opts = {
                        -- Options: "cursor-relative", "fidget", "lualine", "snacks"
                        style = "cursor-relative",
                    },
                },
            },
        })
    end,
}
