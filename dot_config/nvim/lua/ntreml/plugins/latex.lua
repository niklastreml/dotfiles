return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        latex = {
            enabled = true,
            render_modes = true,
            converter = { 'utftex', 'latex2text' },
            highlight = 'RenderMarkdownMath',
            position = 'center',
            top_pad = 0,
            bottom_pad = 0,
        },
    },
}
