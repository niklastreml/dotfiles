vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.wo.number = true
vim.o.hlsearch = true
vim.o.mouse = 'a'

-- spaces > \t
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
-- make \t tabs superwide so they are easy to see
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

vim.opt.conceallevel = 1
vim.opt.linebreak = true

vim.opt.colorcolumn = "100"

vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

vim.diagnostic.config({
    virtual_text = true,
})
