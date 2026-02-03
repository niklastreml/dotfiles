local is_wql = os.getenv("WSL_DISTRO_NAME") ~= nil

if is_wql then
    return {}
else
    return {
        "3rd/image.nvim",
        config = function()
            require("image").setup()
        end,
    }
end
